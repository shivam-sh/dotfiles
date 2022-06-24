# .dotfiles

## Usage
use `dotfiles` to interact with the dotfiles repo on your system
``` bash
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```


## Installation
- `echo ".cfg" >> .gitignore`
- `git clone --bare <git-repo-url> $HOME/.cfg`
- `alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
- `config config --local status.showUntrackedFiles no`
- `config checkout`
  - ^ if fails rerun after backing up
  ``` bash
  mkdir -p .config-backup && \
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .config-backup/{}
  ```



## Creation
- `git init --bare $HOME/.cfg`
- `alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
- `echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zsh/aliases`
- `dotfiles config --local status.showUntrackedFiles no`



> Based on [The Best Way to Store your Dotfiles](https://www.atlassian.com/git/tutorials/dotfiles)
