#!/usr/bin/env bash

cargo build --manifest-path lib/cli/Cargo.toml --features cranelift,singlepass,debug --bin wasmer \
&& ./target/debug/wasmer run ../mio/target/wasm32-wasi/debug/examples/tcp_listenfd_server.wasm \
	--debug --verbose --env 'LISTEN_FDS=1' 
