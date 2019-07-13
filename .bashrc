#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## alias
alias ls='ls  -F --color=auto'
alias ll='ls -lF'
alias la='ll -a'
alias grep='grep --color'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Terminal
PS1='[\[\e[91m\] \u\[\e[0m\]@\[\e[92m\]\h\[\e[0m\]: \[\e[94m\]\w\[\e[0m\]]\$ '
