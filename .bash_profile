#
# ~/.bash_profile
# 
[[ -f ~/.bashrc ]] && . ~/.bashrc

## User environment variables
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

## Programming language export PATH
# Go language additional PATH
if type "/usr/local/go/bin/go" > /dev/null 2>&1; then
  export PATH="/usr/local/go/bin:$PATH"
  export GOPATH="$HOME/go"
  
fi

# local Rust
if type "$HOME/.cargo/env" > /dev/null 2>&1; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi


# ここにWindows(というかGit bash)のPATHとかもやった方がいいかもしれない

## X Server start本当にGUIでよしなにやる場合のみ必要
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
# export DISPLAY=:0.0

