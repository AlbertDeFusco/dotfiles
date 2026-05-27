alias ldd='otool -L'
alias ls='ls -G'
alias ssh='ssh -Y'
alias bc='bc ~/.bc/extensions.bc'
alias cp='cp -p'
alias less=vimpager
alias zless=vimpager
alias mdcat='pandoc -s -f markdown -t man | groff -T utf8 -man'
alias sizes='du -sm * | sort -n -k 1'

#macports
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:/opt/local/man:$MANPATH"
export LD_INCLUDE_PATH="/opt/local/include"
export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"

export PATH=$HOME/bin:$PATH

#LaTex
export TEXMFDBS=$TEXMFDBS:$HOME/Library/texmf

#Java
export JAVA_HOME=$(/usr/libexec/java_home)
export JRE_HOME=$(/usr/libexec/java_home)

