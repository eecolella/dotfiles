

set fish_greeting # disable welcome message

# ---------------------------------
# Prompt Setting
# ---------------------------------

set -U fish_prompt_pwd_dir_length 3 # set length folder in the prompt

set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes

set -g theme_display_node yes

set -g theme_color_scheme light

set -g SPACEFISH_TIME_SHOW true
set -g SPACEFISH_PACKAGE_SHOW false

# ---------------------------------
# Source
# ---------------------------------


source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish
source ~/.config/fish/exports.fish
source ~/.iterm2_shell_integration.(basename $SHELL)
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

