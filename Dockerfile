ARG TOOLCHAIN=stable 
FROM clux/muslrust:$TOOLCHAIN
ARG TOOLCHAIN
RUN cargo +$TOOLCHAIN install cargo-chef