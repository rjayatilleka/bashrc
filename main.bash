_sourcedir () {
  for src in $1/*; do
    source "$src"
  done
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_sourcedir "$DIR/all"
