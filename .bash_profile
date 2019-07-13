#
# ~/.bash_profile
# 
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

## User environment variables
export GPG_TTY=$(tty)
