# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

# Shared session history
setopt SHARE_HISTORY

# vi like mode
bindkey -v

# Stop zsh vi mode catching the escape as an alt key (I tend to quickly hit ESC then / for a backward search. These need to be seen as ESC then / not ALT + /) 
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

if [[ -e /usr/local/go/bin/go ]]; 
then 
  PATH=$PATH:/usr/local/go/bin:/home/cam/.local/go/bin
  go env -w GO111MODULE=on
  go env -w GOBIN=/home/cam/.local/go/bin
fi

#local python modules path 
PATH=$PATH:~/.local/bin

export PATH=$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GNUPG not signing commits properly. Try this
export GPG_TTY=$(tty)

# Use vim
export EDITOR=vim

# Use less
export PAGER='less -S'
