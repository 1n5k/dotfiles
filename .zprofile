export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# if [[ -f ~/.bashrc ]] ; then
#    . ~/.bashrc
# fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


export PATH="$HOME/node_modules/.bin:$PATH"

typeset -U path
path=(~/.local/bin $path[@])

export GPG_TTY=$(tty)
