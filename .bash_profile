#
# ~/.bash_profile
# 
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

## User environment variables
export GPG_TTY=$(tty)
if type "/usr/local/go/bin/go" > /dev/null 2>&1; then
  export PATH="/usr/local/go/bin:$PATH"
  export GOROOT="$HOME/go"
fi
# ここにWindows(というかGit bash)のPATHとかもやった方がいいかもしれない
