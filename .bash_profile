PATH=/opt/local/bin:/Users/zachinglis/bin:$PATH
PATH=/Library/bash:$PATH
PATH=/usr/local/bin:$PATH
export PATH
complete -C git_autocomplete -o default git
complete -C git_autocomplete -o default gco
export MANPATH=/opt/local/share/man:$MANPATH
alias svnrmall="svn st |awk '/^!/{print $2}' |xargs svn rm"

# http://blog.macromates.com/2008/working-with-history-in-bash/
export HISTCONTROL=erasedups # Remove duplicates from history
export HISTSIZE=10000 # Increase history size
shopt -s histappend # Makes history last

alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias nethack='telnet nethack.alt.org'
alias hashrocket="~/sites/rails/hashrocket/bin/hashrocket"

# My other bashes
source ~/.hash_profile_dev
source ~/.bash_vcs

# overwrite ls
alias ls="ls -la"

# hack and ship
alias test='rake spec'
alias ssp="hack && test && ship"

# bash
alias reload='. ~/.bash_profile'
