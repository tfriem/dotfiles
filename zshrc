if [[ `uname` == 'Darwin' ]]
then
	PATH="/usr/local/bin:$(getconf PATH)"
fi

PATH=$PATH:"/home/$USER/.yarn/bin"

export ZSH=~/.oh-my-zsh
export EDITOR=vim

export WORKON_HOME=~/.virtualenvs

ZSH_THEME="powerlevel9k/powerlevel9k"

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOCONNECT="false"

POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode virtualenv status root_indicator time)
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='green'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='red'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='black'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='3'

plugins=(vi-mode git virtualenvwrapper virtualenv zsh-nvm tmux colored-man-page cp dirpersist rsync tig zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
