ARG TOOLCHAIN=stable 
FROM clux/muslrust:$TOOLCHAIN
ARG TOOLCHAIN=stable
RUN cargo +$TOOLCHAIN install cargo-chef