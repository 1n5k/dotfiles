#
# ~/.bash_profile
# 
[[ -f ~/.bashrc ]] && . ~/.bashrc

## User environment variables
# Set gpg password type in now using tty
export GPG_TTY=$(tty)

APPEND_PATH=()
## Programming language version management tool export PATH
# Python Envrionment tool(pyenv)
if type "pyenv" > /dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    APPEND_PATH+=("$PYENV_ROOT/bin")
fi

# rbenv local installation
if type "$HOME/.rbenv/bin/rbenv"  > /dev/null 2>&1; then
    APPEND_PATH+=("$HOME/.rbenv/bin")
fi


## Programming language package manager tool export PATH
# Javascript(npm)
if type "npm" > /dev/null 2>&1; then
    APPEND_PATH+=("$HOME/.node_modules/bin")
fi

## Programming language export PATH
# Go language additional PATH
if type "/usr/local/go/bin/go" > /dev/null 2>&1; then
    APPEND_PATH+=("/usr/local/go/bin")
    export GOPATH="$HOME/go"
fi

# local Rust
if [ -f "$HOME/.cargo/env" 2>/dev/null ]; then
    source "$HOME/.cargo/env"
fi

APPEND_PATH=$(echo ${APPEND_PATH[@]} | tr ' ' ':')
export PATH="${APPEND_PATH}$PATH"
# ここにWindows(というかGit bash)のPATHとかもやった方がいいかもしれない

export LC_ALL=ja_JP.UTF-8

## X Server start本当にGUIでよしなにやる場合のみ必要
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
# export DISPLAY=:0.0

# rbevn system installation
if type "rbenv" > /dev/null 2>&1; then
    eval "$(rbenv init -)"
fi
