# Created by newuser for 5.6.2
setxkbmap -layout jp -option ctrl:nocaps
bindkey -e

## Set emviromment variable
source ~/.zprofile

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
setopt completealiases
zstyle ':completion:*' menu select

## History
HISTFILE=~/.history_zsh
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history
setopt hist_ignore_dups
setopt share_history

## Alias
alias lst='ls -ltr --color=auto'
alias l='ls -ltr --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

## zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "dracula/zsh", as:theme

## Type complete
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

## Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

## Then, source plugins and add commands to $PATH
zplug load

## Activate Themes
ZSH_THEME="Dracula"
