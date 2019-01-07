export PATH="$HOME/bin:$PATH"

# Source this first since it contains the locations of directories needed by funcitons
source ~/.exports
source ~/.functions
source ~/.aliases

# This should be the last line of the file
# For local changes
# Don't make edits below this
[ -f ".bash_profile.local" ] && source ".bash_profile.local"



# ---------------------------------
# NVM
# ---------------------------------

source ~/.nvm/nvm.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                        # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"      # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc

