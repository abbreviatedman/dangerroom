# dangerroom

# An oh-my-zsh theme that's informative, minimal, and, above all, X-Men themed.

#### What does the dangerroom theme _do_ for you?

# The dangerroom theme lines up all your commands on the left side, thanks to
# a simple and static X-Men symbol prompt. No more scanning left to right as you
# parse previous commands. Just look straight up.

# The dangerroom theme shows your working directory and its parent directory.

# The dangerroom theme shows your current git branch and whether you have files
# changed in your repo that you haven't committed. The peace symbol means you're
# all caught up. The crossed swords mean that the X-Men are at _war_.


#### What doesn't it do for you?

# The dangerroom theme does _not_ have the time, the full path to your working
# directory, or extra git information. You rarely need that stuff, so they
# shouldn't be crowding up your terminal. Focus and determination, young mutant.
# Focus and determination.


#### On Fonts and Terminals

# Please note that _some_ terminal/font combinations display this theme's
# symbols either cut off or at half their normal size. Consider experimenting
# with combining different fighting techniques if you want to hone your powers
# and survive in a superpowered world.


#### Installation

# 1. Install oh-my-zsh, if you don't have it. They have excellent  
# directions for how to do so, and you'll never look back.

# 2. Take the `dangerroom.zsh-theme` file from this repo and put it in your  
# `~/.oh-my-zsh/themes` directory.

# 3. Edit the `.zshrc` file in your home directory to set the `ZSH_THEME`
# variable to the value `"dangerroom"`, like so:
# `ZSH_THEME="dangerroom"`

# 4. Run the command `source ~/.zshrc` in your terminal.

# 5. Train your skills in the _danger room_.


#### The Actual Code

# The left-hand prompt.
PROMPT='${vim_mode} %{$reset_color%}'

vim_ins_mode="%{$FG[184]%}⨂%{$reset_color%}"
vim_cmd_mode="%{$FG[027]%}⨂%{$reset_color%}"
vim_mode=$vim_ins_mode

# Determines prompt modifier if and when a conda environment is active
# derived from https://unix.stackexchange.com/a/680112
precmd_conda_info() {
  if [[ -n $CONDA_PREFIX ]]; then
      if [[ $(basename $CONDA_PREFIX) == "anaconda3" ]] || [[ $(basename $CONDA_PREFIX) == "miniconda3" ]]; then
        # Without this, it would display conda version
        CONDA_ENV=""
      else
        # For all environments that aren't (base)
        CONDA_ENV="%{$FG[184]%}conda:%{$FG[027]%}$(basename $CONDA_PREFIX) "
      fi
  # When no conda environment is active, don't show anything
  else
    CONDA_ENV=""
  fi
}

# Run the previously defined function before each prompt
precmd_functions+=( precmd_conda_info )

# Allow substitutions and expansions in the prompt
setopt prompt_subst

# PROMPT='%F{cyan}$CONDA_ENV'

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
RPROMPT='%{$reset_color%} %{$FG[027]%}$CONDA_ENV %{$FG[184]%}git:%{$FG[027]%}$(git_prompt_info) %{$FG[027]%}[%2c]'

# The empty string prefix takes the place of the `git: ` and the opening
# parenthesis before the branch name.
ZSH_THEME_GIT_PROMPT_PREFIX=""

# The suffix takes the place of the closing parenthesis and resets the colors.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Git symbols - the crossed swords for a 'dirty' repo and the peace symbol for a
# 'clean' one.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[184]%} ⚔"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[184]%} ☮"
