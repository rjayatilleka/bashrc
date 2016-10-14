n () {
  if [[ -z "$@" ]]; then
    vim "$HOME/notes/scratch"
  else
    files=""

    for f in "$@"; do
      files+=" $HOME/notes/$f"
    done

    vim -o $files -c "resize"
  fi
}

_notes() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"

  # COMPREPLY=( $(find -L "$HOME/notes" -type f | sed -e "s:^$HOME/notes/::" | fzf --filter="$cur") )
  COMPREPLY=( $(compgen -W "$(find -L "$HOME/notes" -type f | sed -e s:^$HOME/notes/::)" -- ${cur}) )
  return 0
}

complete -F _notes n
