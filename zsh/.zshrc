HISTFILE="$_ZSH_CONFIG/history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS

bindkey -e

source "$_ZSH_CONFIG/prompt.zsh"

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

source "$_ZSH_CONFIG/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$_ZSH_CONFIG/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

if command -v eza >/dev/null 2>&1;then
	alias ls='eza --icons'
	alias ll='eza -lh --icons --git'
	alias la='eza -lah --icons --git'
	alias tree='eza --tree --icons'
fi

alias rg='rg --color=auto'
alias diff='diff --color=auto'

ufetch
