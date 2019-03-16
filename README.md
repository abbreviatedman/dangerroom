# dangerroom

An [oh-my-zsh][oh-my-zsh] theme that's informative, minimal, and, above all,
X-Men themed.

---

![A pictorial demonstration of dangerroom usage.](./dangerroom-demo.png "Pretty cool, huh.")

#### What does the dangerroom theme _do_ for you?

* The dangerroom theme lines up all your commands on the left side, thanks to
a simple and static X-Men symbol prompt. No more scanning left to right as you
parse previous commands. Just look straight up.
* The dangerroom theme shows your working directory and its parent directory.
* The dangerroom theme shows your current git branch and whether you have files
changed in your repo that you haven't committed. The peace symbol means you're
all caught up. The crossed swords mean that the X-Men are at _war_.

#### What doesn't it do for you? 

* The dangerroom theme does _not_ have the time, the full path to your working
directory, or extra git information. You rarely need that stuff, so they
shouldn't be crowding up your terminal. Focus and determination, young mutant.
Focus and determination.

---

#### On Fonts and Terminals

Please note that _some_ terminal/font combinations display this theme's
symbols either cut off or at half their normal size. Consider experimenting
with combining different fighting techniques if you want to hone your powers
and survive in a superpowered world.


#### Installation

1. Install [oh-my-zsh][oh-my-zsh], if you don't have it. They have excellent
directions for how to do so, and you'll never look back.

2. Take the `dangerroom.zsh-theme` file from this repo and put it in your
`~/.oh-my-zsh/themes` directory.

3. Edit the `.zshrc` file in your home directory to set the `ZSH_THEME` variable
to the value `"dangerroom"`, like so:
```bash
ZSH_THEME="dangerroom"
```

4. Run this command in your terminal (or simply quit the terminal and relaunch):
```bash
source ~/.zshrc
```

5. Let the danger room sharpen your command line skills.

Excelsior!

[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
