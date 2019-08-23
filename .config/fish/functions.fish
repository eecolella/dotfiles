
function fow -S -d '(F)fuzzy search a name file and (O)open it in (W)webstorm'
  find * -type f | fzf --preview 'bat --style=numbers --color=always {}' | read -l result; and webstorm "$result"
end

function fown -S -d '(F)fuzzy search a name file and (O)open it in (W)webstorm without (N)node_modules'
  find * -type f | grep -v node_modules | fzf --preview 'bat --style=numbers --color=always {}' | read -l result; and webstorm "$result"
end

function fh -S -d '(F)fuzzy search a command in the (H)history'
  cat ~/.local/share/fish/fish_history | fzf | sed -e 's/- cmd://g' | pbcopy
end

# BROKEN
#function fcow -S -d '(F)fuzzy search a (C)content file and (O)open it in (W)webstorm'
#  rg --files-with-matches --no-messages $argv | fzf --preview 'bat --style=numbers --color=always {}' | read -l result; and webstorm "$result"
#end

function reload -S -d 'Reload Fish config'
  source ~/.config/fish/config.fish
  echo "Fish config reloaded!"
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