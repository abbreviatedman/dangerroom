# dangerroom

An [oh-my-zsh][oh-my-zsh] theme that's informative, minimal, and, above all,
X-Men themed.

---

#### Features

1. Your commands all line up on the left side due to a static-sized prompt. No
more scanning left to right as you parse old commands. Just up.
2. Shows your current directory and parent directory.
3. Shows whether you have files changed in your repo that you haven't committed.
"X" means you should do a commit, the check mark means you've saved all the
changes in the current repo.
4. _Doesn't_ have the time, the full path to your working directory, or extra
git information. You rarely need that stuff, and you can easily get it somewhere
else if you do.

---

#### On Fonts and Terminals

Please note that some terminal/font combinations display the X symbol at half  
height or cut off on the right. Consider trying different fonts for full
dangerroom satisfaction. (Looks great in DejaVu Sans Mono, at least in my
Konsole terminal.)

#### Installation

1. Install [oh-my-zsh][oh-my-zsh], if you don't have it. They have excellent  
directions for how to do so, and you'll never look back.

2. Take the `dangerroom.zsh-theme` file from this repo and put it in your  
`~/.oh-my-zsh/themes` directory.

3. Edit the `.zshrc` file in your home directory to set the `ZSH_THEME` variable
to the value `"dangerroom"`, like so:
`ZSH_THEME="dangerroom"`

4. Run the command `source ~/.zshrc` in your terminal.

5. Train your skills in the _danger room_.

[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
