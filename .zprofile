

if type "pyenv" > /dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
fi

## rbenv local installation
if type "$HOME/.rbenv/bin/rbenv"  > /dev/null 2>&1; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

## rbevn system installation
if type "rbenv" > /dev/null 2>&1; then
    eval "$(rbenv init -)"
fi


if type "npm" > /dev/null 2>&1; then
    export PATH="$HOME/.node_modules/bin:$PATH"
fi


if type "$HOME/.cargo/env" > /dev/null 2>&1; then
    source "$HOME/.cargo/env"
    # export PATH="$HOME/.cargo/bin:$PATH"
fi

typeset -U path
path=(~/.local/bin $path[@])

export GPG_TTY=$(tty)

