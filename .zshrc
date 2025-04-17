export EDITOR=/usr/bin/nvim
export PATH=$HOME/.local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_CUSTOM=$HOME/.config/zsh
source $ZSH/oh-my-zsh.sh
