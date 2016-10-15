set completion-ignore-case On
set +u

for filename in /usr/local/etc/bash_completion.d/*; do
  source "$filename"
done
