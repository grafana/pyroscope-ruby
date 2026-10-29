ARG PLATFORM=x86_64
FROM quay.io/pypa/manylinux2014_${PLATFORM} AS manylinux
RUN manylinux-install-clang -v v22.1.8.1

FROM debian:trixie-slim@sha256:f6b08b09a05725f9431502d3b5714f5c4576e82c1a84fa1debe0c24a7e0c3ec4 AS openssl
ARG OPENSSL_VERSION=3.5.9
# Update together with OPENSSL_VERSION; SHA-256 from the upstream release asset.
ARG OPENSSL_SHA256=603f5602e2eef00d77fbd429d34dcd5822bb301757a1bc9cdb24c670f1eb859a

RUN apt-get update \
    && apt-get install -y --no-install-recommends perl make curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV PATH=/opt/clang/bin:$PATH
ENV CC=clang
ENV SOURCE_DATE_EPOCH=0

# Use the manylinux compiler and headers to preserve glibc 2.17 compatibility.
# Build OpenSSL from source
RUN --mount=type=bind,from=manylinux,source=/opt/clang,target=/opt/clang \
    --mount=type=bind,from=manylinux,source=/usr/include,target=/usr/include \
    --mount=type=bind,from=manylinux,source=/opt/rh/devtoolset-10,target=/opt/rh/devtoolset-10 \
    curl -fsSL "https://github.com/openssl/openssl/releases/download/openssl-${OPENSSL_VERSION}/openssl-${OPENSSL_VERSION}.tar.gz" \
    -o /tmp/openssl.tar.gz \
    && echo "${OPENSSL_SHA256}  /tmp/openssl.tar.gz" | sha256sum -c - \
    && tar xzf /tmp/openssl.tar.gz -C /tmp \
    && cd /tmp/openssl-${OPENSSL_VERSION} \
    && ./config no-shared no-tests --prefix=/usr/local/openssl --openssldir=/etc/ssl \
    && make -j$(nproc) build_libs \
    && make install_dev \
    && if [ -d /usr/local/openssl/lib64 ]; then ln -s lib64 /usr/local/openssl/lib; fi \
    && cd / \
    && rm -rf /tmp/openssl*

FROM manylinux AS builder

ENV RUST_VERSION=1.99.1
RUN curl https://static.rust-lang.org/rustup/dist/$(arch)-unknown-linux-musl/rustup-init -o ./rustup-init \
    && chmod +x ./rustup-init \
    && ./rustup-init  -y --default-toolchain=${RUST_VERSION} --default-host=$(arch)-unknown-linux-gnu
ENV PATH=/root/.cargo/bin:$PATH

COPY --from=openssl /usr/local/openssl /usr/local/openssl
ENV OPENSSL_DIR=/usr/local/openssl
ENV OPENSSL_STATIC=1

WORKDIR /ext/rbspy

ADD ext/rbspy/ /ext/rbspy

# TODO --frozen
RUN --mount=type=cache,target=/root/.cargo/registry cargo build -p ffiruby --release

FROM ruby:4.0@sha256:d907e08a8558207d221f257afe1bfc3e274a12bac035d8bbc9049b01b5364140 AS builder-gem
WORKDIR /gem
ADD Gemfile Gemfile.lock LICENSE pyroscope.gemspec Rakefile README.md /gem/
ADD lib/pyroscope/version.rb /gem/lib/pyroscope/version.rb
ADD lib/pyroscope.rb /gem/lib/pyroscope.rb
ADD ext/rbspy/ /gem/ext/rbspy/


RUN bundle install


COPY --from=builder /ext/rbspy/target/release/librbspy.so lib/rbspy/rbspy.so
ARG TARGET_TASK
RUN rake ${TARGET_TASK}

FROM scratch
COPY --from=builder-gem /gem/pkg/ /pkg/
