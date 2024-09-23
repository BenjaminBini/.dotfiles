# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to our Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
yadm pull
yadm bootstrap

## Set name of the theme to load
hostname=$(hostname)

## Enable git plugin
plugins=(git)

# OMZ
source $ZSH/oh-my-zsh.sh

# Init tools
eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# MacOS PATH
if [[ $(uname) == "Darwin" ]]; then
  export PATH="$PATH:$HOME/.local/bin"
  export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
else
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi


[ -f $HOME/.config/yadm/.zsh_aliases ] && source $HOME/.config/yadm/.zsh_aliases
