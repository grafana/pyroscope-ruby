const fs = require('fs');

module.exports = async function commitFilesThroughGitHubApi({
  github,
  context,
  core,
  branchName,
  files,
  message,
}) {
  if (!branchName) {
    throw new Error('branchName is required');
  }
  if (!message) {
    throw new Error('message is required');
  }
  if (!Array.isArray(files) || files.length === 0) {
    throw new Error('files must be a non-empty array');
  }

  const {owner, repo} = context.repo;
  const uniqueFiles = [...new Set(files)];
  for (const file of uniqueFiles) {
    if (typeof file !== 'string' || file.length === 0) {
      throw new Error('files must only contain non-empty paths');
    }
  }

  const {data: ref} = await github.rest.git.getRef({
    owner,
    repo,
    ref: `heads/${branchName}`,
  });
  const headSha = ref.object.sha;

  const treeEntries = uniqueFiles.map(path => ({
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

  // Default GITHUB_TOKEN commits created through the GitHub API are verified in
  // practice, but do not fail the workflow if GitHub changes that behavior.
  // if (!commit.verification?.verified) {
  //   throw new Error(
  //     `Created commit ${commit.sha} is not verified: ${
  //       commit.verification?.reason ?? 'unknown'
  //     }`
  //   );
  // }

  await github.rest.git.updateRef({
    owner,
    repo,
    ref: `heads/${branchName}`,
    sha: commit.sha,
    force: false,
  });
  core.info(`Updated ${branchName} to ${commit.sha}`);
};
