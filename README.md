# dangerroom

An [oh-my-zsh][oh-my-zsh] theme that's informative, minimal, and, above all,
X-Men themed.

---

#### What does the dangerroom theme _do_ for you?

* The dangerroom theme lines up all your commands on the left side, thanks to
a static-sized prompt. No more scanning left to right as you parse old commands.
Just look straight up.
* The dangerroom theme shows your current directory and parent directory.
* The dangerroom theme shows whether you have files changed in your repo that
you haven't committed. The peace symbol means you haven't made any uncommitted
changes in your repo. The crossed swords mean that the X-Men are at _war_.

#### What doesn't it do for you? 

* The dangerroom theme does _not_ have the time, the full path to your working
directory, or extra git information. You rarely need that stuff, so they
shouldn't be crowding up your terminal. Focus and determination, young mutant.

---

#### On Fonts and Terminals

Please note that _some_ terminal/font combinations display the X-Men symbol and
the git symbols cut off or at half height. Consider experimenting with combining
different fighting techniques if you want to hone your powers and
_survive_ once your training is complete.


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
