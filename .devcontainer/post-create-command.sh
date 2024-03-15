#!/bin/bash

# Install Rust and add wasm target
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Set the default Rust toolchain to stable
rustup default stable

# Add wasm target for the stable toolchain
rustup target add wasm32-unknown-unknown --toolchain stable

# Install wasm-pack
cargo install wasm-pack

# Set up the new Rust library project for WASM
cargo new --lib wasm_game
cd wasm_game

# Append dependencies and library type to Cargo.toml
echo '
[dependencies]
wasm-bindgen = "0.2"

[lib]
crate-type = ["cdylib"]
' >> Cargo.toml
