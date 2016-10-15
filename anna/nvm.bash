PATH="$PATH:/Users/rjayatilleka/.nvm/versions/node/v6.6.0/bin"

# Load nvm if you need to change versions.
# Don't load by default cause it slows shell down
sourcenvm () {
  export NVM_DIR="/Users/rjayatilleka/.nvm"
  set +o nounset
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}
