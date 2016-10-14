set completion-ignore-case On

if [ -f "$HOME/.fzf.bash" ]; then
  source "$HOME/.fzf.bash"
fi

for filename in /usr/local/etc/bash_completion.d/*; do
  source "$filename"
done
