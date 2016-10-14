declare -A -g bookmarks

bookmarks[notes]="$HOME/notes"
bookmarks[nvim]="$HOME/Dropbox/env/config/nvim"

bm() {
  echo "$@"
  echo "${bookmarks[@]}"
}

_bookmarks() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  opts=$(printf '%s\n' "${!bookmarks[@]}")
  # opts=$(echo "${!bookmarks[@]}" | tr ' ' '\n')
  COMPREPLY=( $(echo "$opts" | fzf --filter=$cur) )
  return 0
}

complete -F _bookmarks bm
