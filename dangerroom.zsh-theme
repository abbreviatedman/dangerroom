### dangerroom

# An x-men-inspired ZSH theme.

# This theme owes much to the very helpful comments in the excellent wedisagree theme, part of oh-my-zsh's built-in themes. https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/wedisagree.zsh-theme

# It also owes a lot to this blog post by Paweł Gościcki, and the comments it inspired: http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/

# And now: the code.

# The values for different vim modes.
vim_ins_mode="%{$FG[184]%}⨂%{$reset_color%}"
vim_cmd_mode="%{$FG[027]%}⨂%{$reset_color%}"

# Start in insert mode.
vim_mode=$vim_ins_mode

# The left-hand prompt, which reads the value of the above vim mode variable.

PROMPT='${vim_mode} %{$reset_color%}'

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

# This function fixes a bug when you C-c in CMD mode and you'd be prompted with
# CMD mode indicator, while in fact you would be in INS mode. Fixed by catching
# SIGINT (C-c), setting vim_mode to INS and then repropagating the SIGINT, so if
# anything else depends on it, we will not break it. Thanks to Ron in the
# comments to the blog post here for this solution.
# http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/
function TRAPINT() {
  vim_mode=$vim_ins_mode
  return $(( 128 + $1 ))
}

# The right-hand prompt, with the proper symbols as well as the current git branch.
RPROMPT='%{$FG[027]%}[%2c]%{$reset_color%}%{$FG[184]%} $(git_prompt_info)%{$reset_color%}'

# This empty string prefix takes the place of the `git: ` and the opening
# parenthesis before the branch name. I think it looks better without.
ZSH_THEME_GIT_PROMPT_PREFIX=""

# The suffix takes the place of the closing parenthesis and resets the colors.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Git symbols—the crossed swords for a "dirty" working tree and the peace symbol
# for a "clean" one.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[184]%} ⚔"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[184]%} ☮"
