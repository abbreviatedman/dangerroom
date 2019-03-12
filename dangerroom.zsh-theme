# dangerroom

# An `oh-my-zsh` theme.

# ---

# Installation

# 1. Install `oh-my-zsh`, if you don't have it. They have excellent  
# directions for how to do so, and you'll never look back.

# 2. Take the dangerroom.zsh-theme file from this repo and put it in your  
# `~/.oh-my-zsh/themes` directory.

# 3. Edit the `.zshrc` file in your home directory to set the `ZSH_THEME` variable  
# to the value `dangerroom`, like so:
# `ZSH_THEME="dangerroom"`

# 4. Run the command:
# `source ~/.zshrc`
# from your terminal.

# 5. Train your skills in the danger room.

# ---

# Please note that some terminal/font combinations display the X symbol at half  
# height. Consider trying a different font for full dangerroom satisfaction.

# ---

# The left-hand prompt.

PROMPT='%{$FG[190]%}⨂ %{$reset_color%}'


# The right-hand prompt

RPROMPT='%{$FG[026]%}[%2c]%{$reset_color%} %{$FG[190]%}$(git_prompt_info)%{$reset_color%}'


# Git symbols - the umbrella for a 'dirty' repo and the sun for a 'clean' one.

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[026]%} ☂"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[190]%} ☀"