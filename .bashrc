# . ~/git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1
# → ➵ ➛ ➲ ➤
# profiles:
# PS1='\u @ \H : \W ➲ '
PS1='\w ➲ '
PS2='➲ '

# my scripts
alias nn='~/scripts/nn'
alias wpm='python3 ~/scripts/type.py'
alias tdn='python3 ~/scripts/todo.py'
alias tdf='~/scripts/.todo_folder'
alias z='~/scripts/zet'
alias tsconvert='~/scripts/tsconvert'
alias j='~/scripts/java-shortcuts'

# git aliases
alias push='git add .; git commit; git push'
alias tag='~/scripts/git/tag'
alias clone='~/scripts/git/clone'
alias ptr='~/scripts/git/ptr'
alias rollback='~/scripts/git/rollback'

# misc aliases

alias mbd='sudo dd if=$1 of=$2 bs=1m'
alias upgrade='sudo apt update; sudo apt upgrade; sudo apt autoremove'
alias removenvim='rm -rf ~/.config/nvim; rm -rf ~/.cache/nvim; rm -rf ~/.local/state/nvim; rm -rf ~/.local/share/nvim'
alias cna='npx create-next-app@latest --use-pnpm'
alias run='docker run -it --rm'
alias kctl='minikube kubectl --'
alias ...='cd ../..; pwd'
alias ....='cd ../../..; pwd'
alias ls='ls --color=auto'
alias l='ls -lav --color=auto'
alias n="/usr/local/Cellar/neovim/*/bin/nvim"
alias ytdlp='~/yt-dlp_macos'
alias t='touch'
alias m='mkdir'
alias mp='mkdir -p'
alias v='vim'

# disable mouse accel
# defaults write -g com.apple.mouse.scaling -integer -1

# $PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
# cargo/clang
. "$HOME/.cargo/env"
export CC="clang"
export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
# pnpm
export PNPM_HOME="/Users/sjt/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH