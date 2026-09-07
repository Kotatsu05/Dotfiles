autoload -U colors && colors
setopt PROMPT_SUBST

TN_BLUE='#7aa2f7'
TN_CYAN='#7dcfff'
TN_PURPLE='#bb9af7'
TN_GREEN='#9ece6a'
TN_YELLOW='#e0af68'
TN_RED='#f7768e'
TN_FG='#c0caf5'
TN_COMMENT='#565f89'

git_prompt_info() {
    local git_branch 
		local git_status

    git_branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return

		echo "%F{$TN_PURPLE} ${git_branch}%f"
}

last_exit_info() {
    local exit_code=$?

    if (( exit_code == 0 )); then
        echo "%f"
    else
        echo "%F{$TN_RED} ${exit_code}%f"
    fi
}

precmd() {
		EXIT_INFO=$(last_exit_info)
    GIT_INFO=$(git_prompt_info)
}

PROMPT='%F{$TN_BLUE}%F{$TN_CYAN}%n%F{$TN_COMMENT}@%F{$TN_BLUE}%m %F{$TN_YELLOW}%~%f ${GIT_INFO}${EXIT_INFO}
%F{$TN_BLUE}%F{$TN_PURPLE}❯%f '
