# srigi's dotfiles

These are config files to set up a system the way I like it. Here is for example my ZSH prompt:

![a](http://img.srigi.sk/prompt.png)

`<user>@<hostname> <cwd> [<git branch><workdir dirty status>] [current RVM ruby@gemset]`

You can also see directory jumper Z in action in that screen. And this is how my `git log` looks like:

![a](http://img.srigi.sk/gitl.png)

Configuration files in root of the repo (.dotfiles) contains lots of sensible defaults:

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

## directory jumper Z

TODO

## useful scripts

TODO

## installation

- clone repository into your home dir.
- `git submodule init`, then `git submodule update`
- set your command line interpreter to ZSH: `chsh -s /bin/zsh <username>`
- if you are using Mac OS
  - run `bin/postinstall`, then restart
  - `cd .dotfiles/zsh/oh-my-zsh/custom`, then `ln -s ~/.dotfiles/zsh/plugins plugins`
  - install missing GNU tools `brew install coreutils`
- rerun your terminal app

If you want to benefit from configuration for `nano` in Mac OS, please install version from homebrew:

- `brew tap homebrew/dupes`
- `brew install nano`

Also set precence of `/usr/local/bin` in your `$PATH` (which is always good in Mac OS). Just *sudo* edit `/etc/paths` and put `/usr/local/bin` on top.

cheers :)