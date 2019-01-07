
function fw -S -d '(F)uzzy search a file and open it in (W)webstorm'
  find * -type f | fzf | read -l result; and webstorm "$result"
end


# This should be the last line of the file
# For local changes
# Don't make edits below this
source ~/.config/fish/functions.secret.fish