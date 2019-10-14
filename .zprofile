
## .zprofile is configuration&setting envrionment file when user login.

# Set gpg password type in now using tty
export GPG_TTY=$(tty)

## Programming language version management tool export PATH
# Python Envrionment tool(pyenv)
if type "pyenv" > /dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
fi

# rbenv local installation
if type "$HOME/.rbenv/bin/rbenv"  > /dev/null 2>&1; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

# rbevn system installation
if type "rbenv" > /dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

## Programming language package manager tool export PATH
# Javascript(npm)
if type "npm" > /dev/null 2>&1; then
    export PATH="$HOME/.node_modules/bin:$PATH"
fi

# Rust(cargo)
if type "$HOME/.cargo/env" > /dev/null 2>&1; then
    source "$HOME/.cargo/env"
    # export PATH="$HOME/.cargo/bin:$PATH"
fi


typeset -U path
path=(~/.local/bin $path[@])


