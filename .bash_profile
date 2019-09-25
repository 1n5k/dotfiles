#
# ~/.bash_profile
# 
[[ -f ~/.bashrc ]] && . ~/.bashrc

## User environment variables
export GPG_TTY=$(tty)

if type "/usr/local/go/bin/go" > /dev/null 2>&1; then
  export PATH="/usr/local/go/bin:$PATH"
  export GOPATH="$HOME/go"
  
fi
# ここにWindows(というかGit bash)のPATHとかもやった方がいいかもしれない

## X Server start本当にGUIでよしなにやる場合のみ必要
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
# export DISPLAY=:0.0

if type "$HOME/.cargo/env" > /dev/null 2>&1; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi
