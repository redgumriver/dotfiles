# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

source ~/.bash-git-prompt/prompt-colors.sh
source ~/.bash-git-prompt/gitprompt.sh
#GIT_PROMPT_ONLY_IN_REPO=1
PathShort="\w"
GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${Green}${PathShort}${ResetColor}"
GIT_PROMPT_END_USER=" \n${DimRed}$(date +%H:%M)${ResetColor} ${BrightGreen}${USER}${ResetColor}@${Yellow}${HOSTNAME%%.*}${ResetColor}${ResetColor} $ "

alias ls="ls --color=auto"
alias ll='ls -la'
alias s='git status'
alias d='git diff'
alias gg='git grep'
alias b='git branch'
alias gl='git log --oneline'
alias grl='git reflog'
alias gcp='git cherry-pick'


