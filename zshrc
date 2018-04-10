if [[ `uname` == 'Darwin' ]]
then
	PATH="/usr/local/bin:$(getconf PATH)"
fi

PATH=$PATH:"/home/tobias/.yarn/bin"

export ZSH=~/.oh-my-zsh
export EDITOR=vim

ZSH_THEME="powerlevel9k/powerlevel9k"

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOCONNECT="false"

plugins=(git zsh-nvm tmux colored-man-page cp dirpersist rsync tig zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
