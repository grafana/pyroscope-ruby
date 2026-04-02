.PHONY: header
header:
	cd ext/rbspy && cbindgen --config cbindgen.toml --output include/rbspy.h

.PHONY: linux/amd64
linux/amd64:
	docker buildx build \
		--build-arg=PLATFORM=x86_64 \
		--build-arg="TARGET_TASK=x86_64_linux:gem" \
		--output=. \
		--platform=linux/amd64 \
		-f Dockerfile \
		.

.PHONY: linux/arm64
linux/arm64:
	docker buildx build  \
		--build-arg=PLATFORM=aarch64 \
		--build-arg="TARGET_TASK=aarch64_linux:gem" \
		--output=. \
		--platform=linux/arm64 \
		-f Dockerfile \
		.

.PHONY: mac/amd64
mac/amd64:
	bundle && \
		RUST_TARGET=x86_64-apple-darwin rake rbspy_install && \
		RUST_TARGET=x86_64-apple-darwin rake x86_64_darwin:gem

.PHONY: mac/arm64
mac/arm64:
	bundle && \
		RUST_TARGET=aarch64-apple-darwin rake rbspy_install && \
		RUST_TARGET=aarch64-apple-darwin rake arm64_darwin:gem

.PHONY: check/tag-version
check/tag-version:
	@TAG_VERSION=$${TAG#ruby-}; \
	CARGO_VERSION=$$(sed -n 's/^version = "\(.*\)"/\1/p' ext/rbspy/Cargo.toml); \
	if [ "$$TAG_VERSION" != "$$CARGO_VERSION" ]; then \
		echo "error: tag version ($$TAG_VERSION) does not match Cargo.toml version ($$CARGO_VERSION)"; \
		exit 1; \
	fi; \
	echo "tag version ($$TAG_VERSION) matches Cargo.toml version ($$CARGO_VERSION)"
