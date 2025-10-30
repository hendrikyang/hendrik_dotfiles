# my own config starts
alias df='df -h'
alias du='du -h'
 
alias whence='type -a'                        
# where, of a sort
alias grep='grep --color'                     
# show differences in colour
alias egrep='egrep --color=auto'              
# show differences in colour
alias fgrep='fgrep --color=auto'              
# show differences in colour

# User specific aliases and functions
alias ls='ls -h --color=tty'                 
# classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
#
alias wch='which -a'
alias lx='ls -lXB'
# sort by size
alias lk='ls -lSr'
# sort by date
alias lt='ls -ltr'
alias lta='ls -latr'
alias vi='nvim'
alias ..='cd ..'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias t='tmux new -s a'
alias ta='tmux at -t a'
alias td='tmux deta -s a'
alias tl='tmux ls'
alias gss='git status'
alias gb='git branch'

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export GIT_SSL_NO_VERIFY=1
export EDITOR=nvim
ulimit -n4096 -u4096
# my own config ends
