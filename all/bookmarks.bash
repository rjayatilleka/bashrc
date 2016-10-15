declare -A -g bookmarks

bookmarks[notes]="$HOME/notes"
bookmarks[nvim]="$HOME/Dropbox/env/config/nvim"
bookmarks[bashrc]="$HOME/Dropbox/env/bashrc"

bm() {
  cd "${bookmarks[$1]}"
}

_bookmarks() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  opts=$(printf '%s\n' "${!bookmarks[@]}")
  COMPREPLY=( $(echo "$opts" | fzf --filter=$cur) )
  return 0
}

complete -F _bookmarks bm
