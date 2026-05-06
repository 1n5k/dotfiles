# ~/.zshrc
# ─────────────────────────────
# 基本設定
# ─────────────────────────────

# 環境変数・ターミナル設定など
export TERM="xterm-256color"
export CLICOLORS=true



# ─────────────────────────────
# Sheldon プラグインマネージャの初期化
# ─────────────────────────────

# Sheldon がインストールされている場合は初期化し、存在しない場合は警告を表示
if command -v sheldon >/dev/null 2>&1; then
    eval "$(sheldon source)"
else
    echo "Warning: Sheldonが見つかりません。https://github.com/rossmacarthur/sheldonからインストールしてください。"
fi

# ─────────────────────────────
# キーバインディング
# ─────────────────────────────

# vi ではなく emacs キーバインディングを使用する
bindkey -e

# ─────────────────────────────
# 履歴設定
# ─────────────────────────────

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# 履歴オプション
setopt share_history
setopt histignorealldups
setopt extended_history

# ─────────────────────────────
# 補完・色設定
# ─────────────────────────────

# 補完機能の初期化
autoload -Uz compinit
compinit

# カラー設定の初期化
autoload -Uz colors
colors

# beep を鳴らさない
setopt no_beep

# ─────────────────────────────
# エイリアス・関数
# ─────────────────────────────

alias la='ls -alF --color=auto'
alias ll='ls -lF --color=auto'
alias ls='ls -F --color=auto'
alias mkdir='mkdir -p'

# grep に色付けオプションを付与
function grep() { command grep --color=tty "$@"; }

# Emacs クライアントが存在する場合のエイリアス設定
if (( $+commands[emacsclient] )); then
    alias emt='emacsclient -nc -a ""'
    alias emc='emacsclient -t -a ""'
fi

# ─────────────────────────────
# Powerlevel9k の設定 (必要に応じて)
# ─────────────────────────────

# Powerlevel9k テーマを利用する場合の設定例
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery user host dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(os_icon time)
POWERLEVEL9K_DISABLE_RPROMPT=false
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "


# ─────────────────────────────
# 終了処理
# ─────────────────────────────

# .zshenv .zprofileの読み込み
source .zshenv
source .zprofile
