#
# ~/.bashrc
#

. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

# aliases for my programs
alias vp="~/scripts/vplug"
alias nn='~/scripts/nn'
alias wpm='python3 ~/scripts/type.py'
alias tdn='python3 ~/scripts/todo.py'
alias tdf='~/scripts/.todo_folder'
alias z='~/scripts/zet'
alias push='~/scripts/git/push'
alias tag='~/scripts/git/tag'
alias clone='~/scripts/git/clone'
alias ptr='~/scripts/git/ptr'
alias rollback='~/scripts/git/rollback'

# misc aliases
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'
alias ls='ls --color=auto'
alias l='ls -lav --color=auto'
alias run='docker run -it --rm'
alias kctl='minikube kubectl --'
alias t='touch'
alias m='mkdir'
alias mp='mkdir -p'
alias o='/home/sam/go/bin/o'
alias v='vim'
alias j='~/scripts/java-shortcuts'

# yellow = 33
# green = 32
# purple = 35
# red = 31

PS1='┌\[\033[32m\]\u\[\033[00m\]@\[\033[35m\]\H\[\033[00m\]:\[\033[31m\]\W\[\033[00m\]\n└\$ '

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

. "$HOME/.cargo/env"
