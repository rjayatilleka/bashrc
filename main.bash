_sourcedir () {
  for src in $1/*; do
    source "$src"
  done
}

_sourcedir "$HOME/Dropbox/env/bashrc/all"
