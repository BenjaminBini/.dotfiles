#! /bin/bash

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# MacOS PATH
if [[ $(uname) == "Darwin" ]]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/opt/python/libexec/bin:$PATH"
else
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

yadm pull --quiet

## Set name of the theme to load
hostname=$(hostname)

## Enable git plugin
plugins=(git)

# Init tools
eval "$(starship init zsh)"
eval $(thefuck --alias)

# Load aliases
[ -f $HOME/.config/yadm/.zsh_aliases ] && source $HOME/.config/yadm/.zsh_aliases
