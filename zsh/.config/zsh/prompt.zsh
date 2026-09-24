autoload -U colors && colors
setopt PROMPT_SUBST

TN_BLUE='%F{#7aa2f7}'
TN_CYAN='%F{#7dcfff}'
TN_PURPLE='%F{#bb9af7}'
TN_GREEN='%F{#9ece6a}'
TN_YELLOW='%F{#e0af68}'
TN_RED='%F{#f7768e}'
TN_FG='%F{#c0caf5}'
TN_COMMENT='%F{#565f89}'

git_prompt_info() {
	local git_branch
	git_branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return

	echo "${TN_PURPLE} ${git_branch}%f"
}

last_exit_info() {
	local exit_code=$?

	if (( exit_code == 0 )); then
		echo "%f"
	else
		echo "${TN_RED} ${exit_code}%f"
	fi
}

precmd() {
	EXIT_INFO=$(last_exit_info)
	GIT_INFO=$(git_prompt_info)
}

PROMPT="${TN_BLUE}${TN_CYAN}%n%f${TN_COMMENT}@%f${TN_BLUE}%m%f ${TN_YELLOW}%~%f ${GIT_INFO}${EXIT_INFO}
${TN_BLUE}${TN_PURPLE}❯%f "
