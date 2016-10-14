# Sublime
alias subl='"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"'

# Docker stuff
alias b2d='boot2docker'
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH="/Users/rjayatilleka/.boot2docker/certs/boot2docker-vm"
export DOCKER_TLS_VERIFY=1

# Openssl
export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)/include"
export OPENSSL_LIB_DIR="$(brew --prefix openssl)/lib"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"
export LIBRARY_PATH="/usr/local/lib"
export RUST_SRC_PATH="/Users/rjayatilleka/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src/"

export NVM_DIR="/Users/rjayatilleka/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

