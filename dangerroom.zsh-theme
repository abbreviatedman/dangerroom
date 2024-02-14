# dangerroom

# An X-men-inspired ZSH theme.

# This theme owes much to the very helpful comments in the excellent wedisagree
# theme, part of oh-my-zsh's built-in themes.
# https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/wedisagree.zsh-theme

# It also owes a lot to this blog post by Paweł Gościcki, and the comments it
# inspired:
# http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/

# And now, the code.

## First, some variables.

# Our main 2 colors.
YELLOW='#FFCC00'
BLUE='#0703D0'

# The prompts for the 2 main vim modes, differentiated by color.
VIM_INS_MODE="%F{${BLUE}}⨂"
VIM_CMD_MODE="%F{${YELLOW}}⨂"

## And now, the prompts.

# The left-hand prompt, which reads the value of the vim mode variable.
# (Calculated at great length below.)
PROMPT='${vim_mode} %{$reset_color%}'

# The right-hand prompt, with yellow for the brackets and then always resetting
# to the default text color. `%2c` is the code for "parent and working
# directory".
RPROMPT='%F{${YELLOW}}[%{$reset_color%}%2c%F{${YELLOW}}]%{$reset_color%} $(git_prompt_info)'

# This prefix takes the place of default "git: " string. All we do is make a
# yellow opening parenthesis, which we'll close after the branch info.
ZSH_THEME_GIT_PROMPT_PREFIX="%F{${YELLOW}}(%{$reset_color%}"

# This suffix resets colors for # the next line.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Close the yellow parentheses and switch to blue for the emoji.
GIT_EMOJI_PREFIX="%F{${YELLOW}})%F{${BLUE}}"

# Git indicators—the crossed swords for a "dirty" working tree and the peace
# symbol for a "clean" one.
ZSH_THEME_GIT_PROMPT_DIRTY="${GIT_EMOJI_PREFIX} ⚔"
ZSH_THEME_GIT_PROMPT_CLEAN="${GIT_EMOJI_PREFIX} ☮"

## Lots of Vim Mode Setup

# Start in insert mode.
vim_mode=$VIM_INS_MODE

# A set of functions to update the current vim mode keymap.
function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${VIM_CMD_MODE}}/(main|viins)/${VIM_INS_MODE}}"
  zle reset-prompt
}

zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$VIM_INS_MODE
}

zle -N zle-line-finish

# This function fixes a bug that happens when you C-c in CMD mode. You'd be
# prompted with the CMD mode indicator, while in fact you would be in INS mode.
# We fix it by catching SIGINT (C-c), setting vim_mode to INS, and then
# repropagating the SIGINT—this way, if anything else depends on C-c, we will
# not break it. Thanks to Ron in the comments to the blog post here
# (http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/)
# for this solution.
function TRAPINT() {
  vim_mode=$VIM_INS_MODE
  return $(( 128 + $1 ))
}
