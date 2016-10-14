vims () {
  if [[ "$1" ]]; then
    if [ -f "$1" ]; then
      nvim -S "$1"
    else
      nvim -c "Obsession $1"
    fi
  else
    if [ -f "Session.vim" ]; then
      nvim -S
    else
      nvim -c "Obsession"
    fi
  fi
}
