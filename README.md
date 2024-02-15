# dangerroom

dangerroom is an [oh-my-zsh][oh-my-zsh] theme that's informative, minimal, and, above all, X-Men themed. It's designed in particular for programmers learning the command line for the first time.

Here is [the Wikipedia page for the Danger Room in the X-Men universe](https://en.wikipedia.org/wiki/Danger_Room). Like the original Danger Room, the dangerroom theme helps you train and improve your skills.

## Feature Walkthrough

### In GIF Format

- Show left and right prompts by cd-ing around.
- # It's easy to skim input and output when they line up, so no information is on the left side.
- # Right side tracks working and parent directories only.
- # The theme eschews extraneous information easily gettable elsewhere, like the full path, or the current time or user.
- cd into repo to show minimal git info
- edit command to show Vim indicator

### In Text

#### Minimal Left-Side Prompt For Easy History Parsing

Someone used to the command line can easily skim over the unimportant information to quickly eye the input/output info in a terminal. But it's easier, for new command-line users and experts alike, to have the not-immediately-relevant info kept separate from the always-relevant back-and-forth conversation between user and system that is the command line's main job.

Furthermore, vertical information is far easier for the human mind to parse quickly than having to scan both horizontally and vertically.

This is why dangerroom's left-hand prompt is simply a symbol and a space and stays affixed to the left-hand side no matter what else changes (e.g., the current working directory's character length). it is also why there is no other prompt info interspersed on the left side, as with many themes.

#### Gives The User Vital Info Without Overloading Them

- current directory is often insufficient
- more tends to overwhelm students
- full path is always gettable with `pwd`
- Minimal Git Info, similar to the middle ground of working/parent directory

#### Indicates Current Vim Mode

## Installation

### Prerequisites

- [ZSH](https://en.wikipedia.org/wiki/Z_shell) (the Z Shell).
- [Oh My Zsh][oh-my-zsh]. Besides countless other useful features, OMZ makes managing themes a breeze—few manage ZSH themes without it, in fact.

### How To Install

- Be sure you have the prerequisites above.
- Clone or download this repository.
- Take the `dangerroom.zsh-theme` file from this repo and put it in your `~/.oh-my-zsh/themes` directory.
- Edit the `.zshrc` file that's in your home directory, setting the `ZSH_THEME` variable to the value `"dangerroom"`, like so:

```sh
ZSH_THEME="dangerroom"
```

A similar line should already be in the file—you can change it to look like the above line, instead.

- To activate the theme: either open a new terminal window or tab, which will reload your settings and activate the theme, or activate the theme in your current terminal by running this command, which reads in your zsh configuration:

```sh
source ~/.zshrc
```

- Get to work in the Danger Room, practicing and sharpening your command line skills.

## Current Issues

These are fixable issues—please respond to the Issues on the GitHub repo if you'd like to discuss working on them.

### Requires OMZ

The most likely user not currently supported by this theme is one who has ZSH (the default on Mac) but has not installed Oh My Zsh. It should be doable to remove Oh My Zsh code, or replace it with pure Zsh code. Contributions are welcome.

### Does Not Support Other VCSs

It would be nice to support other Version Control Systems, like SVN and Mercurial. For those who are using another VCS, it would take the place of the Git info, so would still adhere to our minimalist philosophy and feature set.

I don't currently have sufficient experience with other VCSs to judge what info users would want under those systems, but contributions are welcome.

### Requires Zsh

This theme could relatively easily be ported to other shells, such as BASH, Fish, or Eshell. The target user of this theme generally hasn't switched shells, so this isn't a high priority, but contributions are still welcome.

## Additional Setup Recommendations

### Fonts and Terminals

Please note that _some_ terminal/font combinations display this theme's symbols either cut off or at half their normal size. Consider experimenting with combining different fighting techniques (terminals and fonts) if you want to hone your powers and survive in a superpowered world (have good-looking emojis).

### Better Vim Keybindings Experience

If you like using Vim bindings on the command line, I recommend adding [this fantastic zsh plugin](https://github.com/softmoth/zsh-vim-mode). It has many useful Vim keybinding enhancements, such as vim-surround keybindings and a customizable shortcut for switching to Normal Mode.

## Prior Art

- I was helped along greatly by the very helpful code comments in the excellent [wedisagree theme](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/wedisagree.zsh-theme), one of oh-my-zsh's built-in themes. 
- [This blog post by Paweł Gościcki](http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/) assisted with some of the finer points of Vim prompt colorization, along with the comments it inspired.

## Contributing

This project is licensed under the GPL v3. If you'd like to contribute, with ideas or code, please open an issue!

[oh-my-zsh]: https://ohmyz.sh/
