# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to our Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
yadm pull
yadm bootstrap
# VARIABLES/CONSTANTS 

## Variables for dotfiles repo.
git_host="github.com"
git_user="BenjaminBini"
git_repo="dotfiles"
git_url="https://${git_host}/${git_user}/"

## Variables for temporary files/directories.
temp_file="$(mktemp -u)"
temp_dir="$(mktemp -d)"

## Set name of the theme to load
hostname=$(hostname)

## Enable git plugin
plugins=(git)

# OMZ
source $ZSH/oh-my-zsh.sh

## Colorize output.
# shellcheck disable=SC2034
red="\033[91m"
# shellcheck disable=SC2034
green="\033[92m"
# shellcheck disable=SC2034
blue="\033[94m"
# shellcheck disable=SC2034
yellow="\033[93m"
# shellcheck disable=SC2034
white="\033[97m"
# shellcheck disable=SC2034
no_color="\033[0m"

# User configuration

# MacOS PATH
if [[ $(uname) == "Darwin" ]]; then
  export PATH="$PATH:/Users/benjaminbini/.local/bin"
  export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
fi

# Add snap bin to PATH if on host
if [ -d /snap/bin ]; then
  echo "$DIRECTORY does exist."
fi

if [[ $hostname = "VM23042" ]]; then
  export PATH=$PATH:/snap/bin
fi

[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases


eval "$(starship init zsh)"

