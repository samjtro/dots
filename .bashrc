#
# ~/.bashrc
#

. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias push='~/scripts/push'
alias nn='~/scripts/nn'
alias wpm='python3 ~/scripts/type.py'
alias tdn='python3 ~/scripts/todo.py'
alias tdf='~/scripts/.todo_folder'
alias z='~/scripts/zet'
alias run='docker run -it --rm'
alias clone='~/scripts/clone'
alias kctl='minikube kubectl --'
alias t='touch'
alias m='mkdir'
alias o='/home/sam/go/bin/o'

PS1='┌[\[\033[33m\]\u\[\033[00m\]@\[\033[35m\]\H\[\033[00m\]] at [\[\033[36m\]\W\[\033[00m\]] $(__git_ps1 "on \[\033[36m\]%s")\n└\[\033[32m\]ψ\[\033[35m\]ψ\[\033[00m\] '

# FUNCTIONS

free_mem()
{
	awk '/MemFree/{print $2}' /proc/meminfo
}

#------------------------------------------------------------

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##

# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=eos-pacdiff
################################################################################

