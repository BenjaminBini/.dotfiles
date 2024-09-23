# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
hostname=$(hostname)


plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# MacOS PATH
if [[ $hostname = *"macbook"* ]]; then
  export PATH="$PATH:/Users/benjaminbini/.local/bin"
  export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
fi
if [[ $hostname = "VM23042" ]]; then
  export PATH=$PATH:/snap/bin
fi

[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases


atuin server start
eval "$(starship init zsh)"









