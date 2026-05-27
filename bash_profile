if [ -r ~/.bashrc ]; then
       source ~/.bashrc
fi

set -o vi

export BASH_SILENCE_DEPRECATION_WARNING=1

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/adefusco/Applications/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/adefusco/Applications/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adefusco/Applications/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/adefusco/Applications/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# tmux
[[ -z $TMUX ]] || conda deactivate && conda activate base
