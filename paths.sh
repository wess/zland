echo "Loading paths..."

## Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

## Rust
export PATH=~/.cargo/env:$PATH

## Node
export PATH=~/.nodenv/shims:$PATH