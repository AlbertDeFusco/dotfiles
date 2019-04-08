if [ -r ~/.bashrc ]; then
       source ~/.bashrc
fi

set -o vi

#Some gnuplot things
export GNUTERM=x11
export GDFONTPATH=$GDFONTPATH:$HOME/Library/Fonts:/System/Library/Fonts:/Library/Fonts
export GNUPLOT_FONTPATH=$GNUPLOT_FONTPATH:$HOME/Library/Fonts:/System/Library/Fonts:/Library/Fonts
export GNUPLOT_DEFAULT_GDFONT=Monaco

#i like vim
export PAGER=vimpager
export EDITOR=vim
export VISUAL=vim

export MYSQL_PS1="\u@mysql:\d>"

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

## silly tig
source ~/.tig-completion.sh

