
## .zprofile is configuration&setting envrionment file when user login.

# Set gpg password type in now using tty
export GPG_TTY=$(tty)

APPEND_PATH=()
## Programming language version management tool export PATH
# Python Envrionment tool(pyenv)
if type "pyenv" > /dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    APPEND_PATH+="$PYENV_ROOT/bin"
fi

# rbenv local installation
if type "$HOME/.rbenv/bin/rbenv"  > /dev/null 2>&1; then
    APPEND_PATH+="$HOME/.rbenv/bin"
fi

## Programming language package manager tool export PATH
# Javascript(npm)
if type "npm" > /dev/null 2>&1 || type "$HOME/.node_modules/bin/npm" > /dev/null 2>&1; then
    APPEND_PATH+="$HOME/.node_modules/bin"
fi

# Rust(cargo)
if [[ -a "$HOME/.cargo/env" ]]; then
    source "$HOME/.cargo/env"
    # export PATH="$HOME/.cargo/bin:$PATH"
fi

# if you want to add SPECIFIC setting, modify this files.
# DO NOT PUT ANYTHING.
if [[ -a "$HOME/.specify_config" ]]; then
    APPEND_PATH+="$HOME/.specify_config"
fi


typeset -U path
path=($APPEND_PATH[@] ~/.local/bin $path[@])

# rbevn system installation
if type "rbenv" > /dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

