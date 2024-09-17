# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# vi like mode
bindkey -v
bindkey -M viins '^?' backward-delete-char

#Auto-Completion 
autoload -Uz compinit
compinit

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
export PATH=$PATH:/usr/local/go/bin:/home/cam/go/bin


