export _ZSH_CONFIG="$HOME/.config/zsh"
export EDITOR=nvim
export VISUAL=nvim

if command -v nvim >/dev/null 2>&1; then
	#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
	export MANPAGER='nvim +Man!'
fi
