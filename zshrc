# General settings
export TERM="xterm-256color"
export EDITOR=vim

# go
export PATH="$HOME/go/bin:$PATH"

# bat and bat-extras
if type "bat" > /dev/null; then
	alias cat=bat
fi
export PATH="$HOME/scripts:$PATH"

# oh-my-zsh
export ZSH=~/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

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

plugins=(vi-mode golang git gh virtualenv zsh-nvm tmux colored-man-pages cp copyfile copypath dircycle dirpersist rsync tig history-substring-search)

source $ZSH/oh-my-zsh.sh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias preview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# Generated

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
