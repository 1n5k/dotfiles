

if type "pyenv" > /dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
fi

if type "rbenv" > /dev/null 2>&1; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

if type "npm" > /dev/null 2>&1; then
    export PATH="$HOME/.node_modules/bin:$PATH"
fi

typeset -U path
path=(~/.local/bin $path[@])

export GPG_TTY=$(tty)
