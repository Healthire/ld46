cargo build --release --target=wasm32-unknown-unknown

mkdir ".\target\webroot"
copy ".\scripts\index.html" ".\target\webroot\index.html"
wasm-bindgen --target no-modules --no-typescript --out-dir ./target/webroot/ --out-name ld46 ./target/wasm32-unknown-unknown/release/ld46.wasm