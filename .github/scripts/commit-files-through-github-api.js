const fs = require('fs');

module.exports = async function commitFilesThroughGitHubApi({
  github,
  context,
  branchName,
  files,
  message,
}) {
  const {owner, repo} = context.repo;
  const {data: ref} = await github.rest.git.getRef({
    owner,
    repo,
    ref: `heads/${branchName}`,
  });
  const headSha = ref.object.sha;

  const treeEntries = files.map(path => ({
    path,
    mode: '100644',
    type: 'blob',
    content: fs.readFileSync(path, 'utf8'),
  }));

  const {data: baseCommit} = await github.rest.git.getCommit({
    owner,
    repo,
    commit_sha: headSha,
  });
  const {data: tree} = await github.rest.git.createTree({
    owner,
    repo,
    base_tree: baseCommit.tree.sha,
    tree: treeEntries,
  });
  const {data: commit} = await github.rest.git.createCommit({
    owner,
    repo,
    message,
    tree: tree.sha,
    parents: [headSha],
  });

  if (!commit.verification?.verified) {
    throw new Error(
      `Created commit ${commit.sha} is not verified: ${
        commit.verification?.reason ?? 'unknown'
      }`
    );
  }

  await github.rest.git.updateRef({
    owner,
    repo,
    ref: `heads/${branchName}`,
    sha: commit.sha,
    force: false,
  });
  console.log(`Updated ${branchName} to ${commit.sha}`);
};
