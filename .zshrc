## zplug installtion
if [[ ! -d ~/.zplug ]]; then
	git clone https://github.com/zplug/zplug ~/.zplug
fi

## zplug init
source ~/.zplug/init.zsh

zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zaw'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'plugins/git', from:oh-my-zsh
zplug 'peterhurford/git-aliases.zsh'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-history-substring-search', defer:3
zplug 'junegunn/fzf-bin', as:command, from:gh-r, rename-to:fzf
zplug 'mollifier/anyframe'
zplug 'b4b4r07/enhancd', use:init.sh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug load

if ! zplug check --verbose; then
	printf "Install?[y/n]: "
	if read -q; then
		echo; zplug install
	fi
fi

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

## use colors       
autoload -Uz colors 
colors              

# export CLICOLORS=true
export CLICOLORS=true


## Options
# history options
setopt share_history
setopt histignorealldups
setopt extended_history

# other option
setopt no_beep

## Aliases
alias la='ls -alF --color=auto'
alias ll='ls -lF --color=auto'
alias ls='ls -F --color=auto'
alias mkdir='mkdir -p'
function grep () { command grep --color=tty "$@"; }

## Powerline settings
ZSH_THEME=powerlevel9k
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery user host dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
# ZSH_THEME="risto"

# source ~/vyper-env/bin/activate

