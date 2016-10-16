declare -A -g bookmarks

# Example: bookmarks[notes]="$HOME/notes"

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
