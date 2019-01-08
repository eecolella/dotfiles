

set fish_greeting

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


# ---------------------------------
# Source
# ---------------------------------

source ~/.config/fish/aliases.fish
source ~/.config/fish/exports.fish
source ~/.config/fish/functions.fish
