# dangerroom

An [oh-my-zsh][oh-my-zsh] theme that's informative, minimal, and, above all,
X-Men themed.

![A pictorial demonstration of dangerroom usage.](./dangerroom-demo.png "Pretty cool, huh.")

---

## About

### What does the dangerroom theme _do_ for you?

- The dangerroom theme lines up all your commands on the left side, thanks to a simple and static X-Men symbol prompt. No more scanning left to right as you parse previous commands. Just look straight up.
- The dangerroom theme shows the working directory and its parent directory.
- The dangerroom theme shows the current git branch and whether you have files changed in your repo that you haven't committed. The peace symbol means you're all caught up. The crossed swords mean that the X-Men are at _war_.
- The dangerroom theme shows you the current command-line vim mode, if applicable. The yellow X-Men symbol is Insert, the blue is Normal.

### What doesn't it do for you?

- The dangerroom theme does _not_ have the time, the full path to your working directory, or extra git information. You rarely need that stuff, so they shouldn't be crowding up your terminal. Focus and determination, young mutant. _Focus and determination_.

---

## Installation

- Install [oh-my-zsh][oh-my-zsh], if you don't have it. They have excellent directions for how to do so, and you'll never look back.

- Take the `dangerroom.zsh-theme` file from this repo and put it in your `~/.oh-my-zsh/themes` directory.

- Edit the `.zshrc` file in your home directory to set the `ZSH_THEME` variable to the value `"dangerroom"`, like so:

```sh
ZSH_THEME="dangerroom"
```

- Run this command in your terminal (or simply close the terminal and relaunch):

```sh
source ~/.zshrc
```

- Let the danger room sharpen your command line skills.

Excelsior!

[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh

## On Fonts and Terminals

Please note that _some_ terminal/font combinations display this theme's symbols either cut off or at half their normal size. Consider experimenting with combining different fighting techniques if you want to hone your powers and survive in a superpowered world.

## Additional Setup Recommendations

### Better Vim Keybindings Experience

Add [this fantastic zsh plugin](https://github.com/softmoth/zsh-vim-mode) if you like using Vim bindings on the command line.

### Better Experience When Combining Emacs' Evil And Vterm Modes

Notes on this coming soon.

## Todos

- Make new demo gif showing Vim mode indicator.
- Outline Vterm/Evil solution.
- Propose Eshell.
- Remove all code comments.
