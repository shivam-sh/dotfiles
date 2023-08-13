# .dotfiles

## Usage
use `dot` to interact with the dotfile repo on your system
``` bash
dot status
dot add .vimrc
dot commit -m "Add vimrc"
dot add .bashrc
dot commit -m "Add bashrc"
dot push
```


## Installation
- `git clone --bare git@github.com:shivam-sh/dotfiles.git $HOME/.config/.git`
- `alias dot='/usr/bin/git --git-dir=$HOME/.config/.git/ --work-tree=$HOME'`
- `dot config --local status.showUntrackedFiles no`
- `dot checkout`
  - ^ if fails rerun after backing up
  ``` bash
  mkdir -p .dot-backup && \
  dot checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .dot-backup/{}
  ```



## Creation
- `git init --bare $HOME/.config/.git`
- `alias dot='/usr/bin/git --git-dir=$HOME/.config/.git/ --work-tree=$HOME'`
- `echo "alias dot='/usr/bin/git --git-dir=$HOME/.config/.git/ --work-tree=$HOME'" >> $HOME/.zsh/aliases`
- `dot config --local status.showUntrackedFiles no`



> Based on [The Best Way to Store your Dotfiles](https://www.atlassian.com/git/tutorials/dotfiles)
