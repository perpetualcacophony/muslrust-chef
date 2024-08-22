ARG TOOLCHAIN=stable 
FROM clux/muslrust:${TOOLCHAIN}
ARG TOOLCHAIN
RUN CARGO_BUILD_TARGET=x86_64-unknown-linux-gnu \
    cargo +${TOOLCHAIN} install cargo-chef