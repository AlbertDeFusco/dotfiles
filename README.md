# My configuration files

## Installation

I genearlly clone this repo into a hidden directory in my $HOME

```
git clone git@github.com:albertdefusco/dotfiles ~/.dotfiles
```

From here I soft-link the contents so that I can keep the cloned repo as the source of truth

```
> cd ~
> ln -s .dotfiles/bash_profile      .bash_profile
> ln -s .dotfiles/bc                .bc
> ln -s .dotfiles/gitconfig         .gitconfig
> ln -s .dotfiles/gvimrc            .gvimrc
> ln -s .dotfiles/inputrc           .inputrc
> ln -s .dotfiles/tig-completion.sh .tig-completion.sh
> ln -s .dotfiles/tmux.conf         .tmux.conf
> ln -s .dotfiles/vim               .vim
> ln -s .dotfiles/vimrc             .vimrc
```

### VIM

The vim extensions have been provided through the Plug tool. To finalize the VIM plugins run the `:PlugInstall` command in the vim editor.

https://github.com/junegunn/vim-plug
