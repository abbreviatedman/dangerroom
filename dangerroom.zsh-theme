### dangerroom

# An x-men-inspired ZSH theme.

# See the source and read the basic documentation at https://github.com/abbreviatedman/dangerroom/

# This theme owes much to the very helpful comments in the excellent wedisagree theme, part of oh-my-zsh's built-in themes. https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/wedisagree.zsh-theme

# It also owes a lot to this blog post by Paweł Gościcki, and the comments it inspired: http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/

# And now: the code.

# The left-hand prompt.
PROMPT='${vim_mode} %{$reset_color%}'

vim_ins_mode="%{$FG[184]%}⨂%{$reset_color%}"
vim_cmd_mode="%{$FG[027]%}⨂%{$reset_color%}"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}

zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}

zle -N zle-line-finish

# Fix a bug when you C-c in CMD mode and you'd be prompted with CMD mode indicator, while in fact you would be in INS mode
# Fixed by catching SIGINT (C-c), set vim_mode to INS and then repropagate the SIGINT, so if anything else depends on it, we will not break it
# Thanks Ron! (see comments)
function TRAPINT() {
  vim_mode=$vim_ins_mode
  return $(( 128 + $1 ))
}

# The right-hand prompt.
RPROMPT='%{$FG[027]%}[%2c]%{$reset_color%}%{$FG[184]%} $(git_prompt_info)%{$reset_color%}'

# The empty string prefix takes the place of the `git: ` and the opening
# parenthesis before the branch name.
ZSH_THEME_GIT_PROMPT_PREFIX=""

# The suffix takes the place of the closing parenthesis and resets the colors.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Git symbols - the crossed swords for a 'dirty' repo and the peace symbol for a 'clean' one.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[184]%} ⚔"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[184]%} ☮"
