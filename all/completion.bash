set completion-ignore-case On

for filename in /usr/local/etc/bash_completion.d/*; do
  source "$filename"
done
