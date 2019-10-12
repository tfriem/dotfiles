if [[ `uname` == 'Darwin' ]]
then
	PATH="/usr/local/bin:$(getconf PATH)"
	export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
fi

PATH=/snap/bin:$PATH

if type "bat" > /dev/null; then
	alias cat=bat
fi

alias preview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

export ZSH=~/.oh-my-zsh
export EDITOR=vim

export WORKON_HOME=~/.virtualenvs

ZSH_THEME="powerlevel9k/powerlevel9k"

DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

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

plugins=(vi-mode git dotenv virtualenvwrapper virtualenv zsh-nvm tmux colored-man-pages cp copyfile copydir dircycle dirpersist rsync kubectl tig history-substring-search)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
