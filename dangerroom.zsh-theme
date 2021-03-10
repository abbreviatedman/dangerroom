# dangerroom

# An oh-my-zsh theme that's informative, minimal, and, above all, X-Men themed.

## Coming soon - a vim mode indicator!


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
PROMPT='%{$FG[190]%}⨂ %{$reset_color%}'

# The right-hand prompt.
RPROMPT='%{$FG[026]%}[%2c]%{$reset_color%} %{$FG[190]%}$(git_prompt_info)%{$reset_color%}'

# The empty string prefix takes the place of the `git: ` and the opening
# parenthesis before the branch name.
ZSH_THEME_GIT_PROMPT_PREFIX=""

# The suffix takes the place of the closing parenthesis and resets the colors.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Git symbols - the crossed swords for a 'dirty' repo and the peace symbol for a
# 'clean' one.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[190]%} ⚔"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[190]%} ☮"
