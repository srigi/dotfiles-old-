# srigi's dotfiles

---
**Deprecated!**

This repository is read-only now. I ditched the idea of both BASH & ZSH configured together with classic git repo. Also I'm ditching Oh-my-zsh.

---

is a collection of configuration files & command-line tools to setup *NIX system the way I like it. Example my ZSH prompt:

![a](http://img.srigi.sk/prompt.new.png)

Segments on command-line prompt (those in square brackets are displayed only when needed):

`[user@hostname] <cwd> <rvm's ruby[@gemset]> <[➦]git branch|HEAD>`

In the screenshot above you can see [directory jumper Z](https://github.com/rupa/z/wiki) in action. It is a small plugin for your command-line interpreter, that stores path, frequency & timestamp in text database as you are navigating across filesystem usin command-line.

When database contains enough informations, you can use `z` to jump directly into directory that matches your query.

Here is another screenshot, `git log`:

![a](http://img.srigi.sk/gitl.png)

For best results, please use terminal emulator with 256 colors support!

## .dotfiles

Configuration files contains lots of sensible defaults:

- configuration for Midnight Commander
  - panels view
  - hotlist (press `CTRL+\` to invoke hotlist)
- BASH configuration
  - ENV vars
  - prompt configuration
  - aliases
  - scripts for Z and RVM
- `gem` command configuration (speeding up `gem install`)
- `git` command configuration
  - aliases
  - colors
- configuration for `nano`
- configuratin for ZSH
  - scripts for Z and RVM
  - oh-my-zsh configuration
  - `setopt` & `zstyle` options
  - aliases

Configuration for command-line interpreters is nicely splitted into several files which lives in `.dotfiles`. This rapidly increases maintability. ZSH is configured for pleasant usability:

- fuzzy TAB completion - expand path on partial match
- TAB menu for most commands, plugins for commands like `git`, `rvm`, etc.
- auto remove of trailing slash
- brilliant `G` middle alias for `| grep <pattern>`, try `ls / G usr`

Tons of optios is still commented out in `.dotfiles/zsh/{setopt,zstyle}`, so experiment with *unlimited* possibilities of ZSH.

### bin

In `bin` directory you can find lots of useful command-line tools:

- `closure compiler` & `yuicompressor`
- `backup` - script to backup Mac OS X user profile
- `composer`
- `firefox-defrag` - vaccum your Firefox's sqlite databases
- `flac2mp3` - convert `.flac` files into `.mp3`
- `flv2mp3` - convert `.flv` & `.mp4` videofiles into `.mp3`
- `ftpmounts`
- lets*
- `postinstall` - postinstall script for Mac OS X (based on [Mathias Bynens legendary script](https://github.com/mathiasbynens/dotfiles/blob/master/.osx))
- `restore` - script to restore Mac OS X user profile from backup
- `subl` - script to open files in Sublime text from command-line
- `totalTerminal.postinstall`
- `yt` - Youtube downloader
- `z.sh` - Directory jumper z

## installation

- use 256 color terminal emulator (iTerm on Mac)
- clone repository into your home dir.
- `git submodule init`, then `git submodule update`
- set your command line interpreter to ZSH: `chsh -s /bin/zsh <username>`
- if you are using Mac OS
  - run `bin/postinstall`, then restart
  - `cd .dotfiles/zsh/oh-my-zsh/custom`, then `ln -s ~/.dotfiles/zsh/plugins plugins`
  - install missing GNU tools `brew install coreutils`
- restart your terminal app

If you want to benefit from configuration for `nano` in Mac OS, please install version from homebrew:

- `brew tap homebrew/dupes`
- `brew install nano`

Also set precence of `/usr/local/bin` in your `$PATH` (which is always good in Mac OS). Just *sudo* edit `/etc/paths` and put `/usr/local/bin` on top.

cheers :)