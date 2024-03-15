# Rust_Snake

A snake game built with Rust and Typescript.

## Credits

This is a project that was initialized as part of the Udemy course by Filip Jerga.
[Udemy Wasm Rust Snake Game](https://www.udemy.com/course/rust-webassembly-with-js-ts-the-practical-guide)

# Initial setup

After loading the codespace with a dev container install the appropriate rust dependencies in the terminal

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup target add wasm32-unknown-unknown
cargo install wasm-pack
```

- Then run

```
cargo new --lib wasm_game
cd wasm_game
```

- add the following to the Cargo.toml file

```
[dependencies]
wasm-bindgen = "0.2"

[lib]
crate-type = ["cdylib"]
```
