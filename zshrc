# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

# Shared session history
setopt INC_APPEND_HISTORY

# vi like mode
bindkey -v

export KEYTIMEOUT=1

# more vim like backspace
bindkey -M viins '^?' backward-delete-char

#Auto-Completion 
autoload -Uz compinit
compinit

unsetopt AUTO_LIST             # Don’t list options unless requested

#Define Zsh theme
ZSH_THEME=my-theme
source ~/.config/zsh/zsh-theme

## Colourise ls output ##
alias ls='ls --color=auto'

## Use a long listing format with ls ##
alias ll='ls -altr --color=auto'

# Configure Go to install stuff of Github idk
export GO111MODULE=on

# Go path
PATH=$PATH:/usr/local/go/bin:/home/cam/.local/go/bin

#local python modules path 
PATH=$PATH:~/.local/bin

export PATH=$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GNUPG not signing commits properly. Try this
export GPG_TTY=$(tty)
