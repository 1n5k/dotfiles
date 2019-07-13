#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



## alias
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --color'

## Terminal

PS1='[\[\e[91m\] \u\[\e[0m\]@\[\e[92m\]\h\[\e[0m\]: \[\e[94m\]\w\[\e[0m\]]\$ '
