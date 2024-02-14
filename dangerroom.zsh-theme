# dangerroom

# An X-men-inspired ZSH theme.

# This theme owes much to the very helpful comments in the excellent wedisagree
# theme, part of oh-my-zsh's built-in themes.
# https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/wedisagree.zsh-theme

# It also owes a lot to this blog post by Paweł Gościcki, and the comments it
# inspired:
# http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/

# And now, the code:

# The left-hand prompt, which reads the value of the vim mode variable.
# (Calculated at great length below.)
PROMPT='${vim_mode} %{$reset_color%}'

# The right-hand prompt, with the first color used for the current and parent
# directories and the second for the git branch.
RPROMPT='%{$FG[027]%}[%2c]%{$reset_color%}%{$FG[214]%} $(git_prompt_info)%{$reset_color%}'

# This empty string prefix takes the place of default "git: " string and the
# opening parenthesis before the branch name. I think it looks better without.
ZSH_THEME_GIT_PROMPT_PREFIX=""

# The suffix takes the place of the closing parenthesis (and resets colors for
# the user's commands and the shell's output.)
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Git symbols—the crossed swords for a "dirty" working tree and the peace symbol
# for a "clean" one.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[214]%} ⚔"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[214]%} ☮"

# Lots of Vim Mode Setup

# The prompts for different vim modes, with differing colors to indicate the
# mode.
vim_ins_mode="%{$FG[214]%}⨂%{$reset_color%}"
vim_cmd_mode="%{$FG[027]%}⨂%{$reset_color%}"

# Start in insert mode.
vim_mode=$vim_ins_mode

# A set of functions to update the current vim mode keymap.
function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}

zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
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
  vim_mode=$vim_ins_mode
  return $(( 128 + $1 ))
}
