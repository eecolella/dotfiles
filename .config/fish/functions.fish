
function fw -S -d '(F)uzzy search a file and open it in (W)webstorm'
  find * -type f | fzf | read -l result; and webstorm "$result"
end

function __check_nvm --on-variable PWD --description 'Auto "nvm use" if there is a .nvmrc in the folder'
  if test -f .nvmrc
    set node_version (nvm version)
    set nvmrc_node_version (nvm version (cat .nvmrc))

    if [ $nvmrc_node_version = "N/A" ]
      nvm install
    else if [ $nvmrc_node_version != $node_version ]
      nvm use
    end
  end
end

__check_nvm

# This should be the last line of the file
# For local changes
# Don't make edits below this
source ~/.config/fish/functions.secret.fish