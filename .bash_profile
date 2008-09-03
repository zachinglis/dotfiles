PATH=/opt/local/bin:/Users/zachinglis/bin:$PATH
PATH=/Library/bash:$PATH
PATH=/usr/local/bin:$PATH
PATH="/Users/`whoami`/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH
export MANPATH="/usr/local/man:$MANPATH"
complete -C git_autocomplete -o default git
complete -C git_autocomplete -o default gco
export MANPATH=/opt/local/share/man:$MANPATH
alias svnrmall="svn st |awk '/^!/{print $2}' |xargs svn rm"

# http://blog.macromates.com/2008/working-with-history-in-bash/
export HISTCONTROL=erasedups # Remove duplicates from history
export HISTSIZE=10000 # Increase history size
shopt -s histappend # Makes history last

## Other
alias rpid="rm -rf log/*.*pid"
alias log="tail -f log/development.log"

alias plugins='cd ~/sites/rails/rails_plugins'
alias rails_plugins='cd ~/sites/rails/rails_plugins'

export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=gxgxcxdxbxegedabagacad
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

# binaries
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias hashrocket="~/sites/rails/hashrocket/bin/hashrocket"

# hack and ship
alias test='rake spec'
alias ssp="hack && test && ship"

# My other bashes
source ~/.bash_vcs

# overwrite ls
alias ls="ls -la"

# bash
alias reload='. ~/.bash_profile'
