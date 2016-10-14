weather () {
  if [[ "$1" == "-a" ]]; then
    curl "http://wttr.in/$2"
  else
    curl -s "http://wttr.in/$1" | head -n 17
  fi
}
