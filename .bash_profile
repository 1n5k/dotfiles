#
# ~/.bash_profile
# 
[[ -f ~/.bashrc ]] && . ~/.bashrc

## User environment variables
export GPG_TTY=$(tty)
export DISPLAY=:0.0

if type "/usr/local/go/bin/go" > /dev/null 2>&1; then
  export PATH="/usr/local/go/bin:$PATH"
  export GOPATH="$HOME/go"
  
fi
# ここにWindows(というかGit bash)のPATHとかもやった方がいいかもしれない

## X Server start
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
