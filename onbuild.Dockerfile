ARG TOOLCHAIN=stable 
FROM perpetualcacophony/muslrust-chef:$TOOLCHAIN
ARG TOOLCHAIN

ONBUILD WORKDIR /chef
ONBUILD COPY . .
ONBUILD RUN cargo +$TOOLCHAIN chef prepare --recipe-path recipe.json
ONBUILD RUN cargo +$TOOLCHAIN chef cook --release --target x86_64-unknown-linux-musl --recipe-path recipe.json

ONBUILD ARG BUILDFLAGS=""
ONBUILD RUN cargo +nightly build --release --target x86_64-unknown-linux-musl $BUILDFLAGS`

ONBUILD WORKDIR /out
ONBUILD RUN mv /chef/target/x86_64-unknown-linux-musl/release/* .

ONBUILD WORKDIR /