_sourcedir () {
  for src in $1/*; do
    source "$src"
  done
}

_sourcedir "$HOME/Dropbox/env/bashrc/all"
# source "$HOME/Dropbox/env/bashrc/bookmarks.sh"
