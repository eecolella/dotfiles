# ---------------------------------
# Navigation
# ---------------------------------

alias home "cd ~"
alias root "cd /"
alias . "cd ."
alias .. "cd .."
alias ... "cd ../../"
alias .... "cd ../../../"
alias ..... "cd ../../../../"
alias proj "cd ~/Projects"
alias play "cd ~/Playground"


# ---------------------------------
# Git specific aliases
# ---------------------------------

alias gi "git init"
alias gs "git status"
alias gph "git push"
alias gpl "git pull"
alias ga "git add"
alias gc "git commit -am"
alias gb "git branch"
alias gf "git fetch"

alias gra "git remote add"
alias gco "git checkout"

alias gpo "git push origin"
alias gpom "git push origin master"


# ---------------------------------
# NPM
# ---------------------------------

alias n "npm run"
alias ni "npm install --save"
alias nid "npm install --save-dev"
alias a-npm-clean-locks "find . -type f -name package-lock.json -exec rm {} +"
alias a-npm-list-linked-in-foledr "ls -al ./node_modules"
alias a-npm-list-global-packages "npm list -g --depth=0"
alias a-npm-create-react-app "npx create-react-app"
alias a-npm-create-react-app-ts "npx create-react-app --scripts-version=react-scripts-ts"
alias a-npm-tree-node-modules "tree -I node_modules"


# ---------------------------------
# Yarm
# ---------------------------------

alias y "yarn"
alias ys "yarn start"
alias yl "yarn lint"
alias yt "yarn test"
alias a-yarn-clean-yarns "find . -type f -name yarn.lock -exec rm {} +"
alias a-yarn-list-links "sudo sh ~/Projects/aeneas/packages/sh-scripts/list-yarn-links.sh"


# ---------------------------------
# Ranger
# ---------------------------------

alias r "ranger --choosedir=$HOME/rangerdir;cd (cat $HOME/rangerdir)"


# ---------------------------------
# Misc
# ---------------------------------

alias kn "sudo killall node"










# ---------------------------------
# LAST LINE !!!!
# ---------------------------------
# This should be the last line of the file

source ~/.config/fish/aliases.secret.fish