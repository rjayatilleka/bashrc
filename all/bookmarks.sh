declare -A bookmarks

bookmarks[notes]="$HOME/notes"
bookmarks[nvim]="$HOME/Dropbox/env/config/nvim"

# echo ${bookmarks[@]}

bm() {
  echo "${bookmarks[@]}"
}

_bookmarks() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"

  # COMPREPLY=( $(find -L "$HOME/notes" -type f | sed -e "s:^$HOME/notes/::" | fzf --filter="$cur") )
  COMPREPLY=( $(compgen -W "$(find -L "$HOME/notes" -type f | sed -e s:^$HOME/notes/::)" -- ${cur}) )
  return 0
}

complete -F _bookmarks bm
