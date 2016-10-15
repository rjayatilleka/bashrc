_sourcedir () {
  for src in $1/*.bash; do
    set -o nounset
    source "$src"
    set +o nounset
  done
}

_bashrc_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_sourcedir "$_bashrc_home/all"
