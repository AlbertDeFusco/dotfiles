set -o vi

alias wget='curl -O'
alias ldd='otool -L'
alias ls='ls -G'
alias ssh='ssh -Y'
alias bc='bc ~/.bc/extensions.bc'
alias cp='cp -p'
alias less=vimpager

source /usr/local/Modules/3.2.10/init/bash

#Some gnuplot things
export GNUTERM=x11
export GDFONTPATH=$GDFONTPATH:$HOME/Library/Fonts:/System/Library/Fonts:/Library/Fonts
export GNUPLOT_FONTPATH=$GNUPLOT_FONTPATH:$HOME/Library/Fonts:/System/Library/Fonts:/Library/Fonts
export GNUPLOT_DEFAULT_GDFONT=Monaco

#i like vim
export PAGER=vimpager
export EDITOR=vim
export VISUAL=vim

#LaTex
export TEXMFDBS=$TEXMFDBS:$HOME/Library/texmf

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_INCLUDE_PATH=/opt/local/include
export MYSQL_PS1="\u@mysql:\d>"
export MANPATH=$HOME/Library/Documentation:/usr/local/share/man:/usr/local/man:$MANPATH


#completion and PS1
if [ -e /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi
if [ -f /opt/local/share/git/contrib/completion/git-completion.bash ]; then
  source /opt/local/share/git/contrib/completion/git-completion.bash
  source /opt/local/share/git/contrib/completion/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1="\u@\h:\W\$(__git_ps1)>"
else
  export PS1="\u@\h:\W>"
fi


#macports
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:/opt/local/man:$MANPATH"
