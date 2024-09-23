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
gray="\033[90m"

print_discreet_no_nl() {
    echo -n "${gray}=>${no_color}${gray}" "${@}" "${no_color}" >&1
}

print_discreet() {
    echo "${gray}=>${no_color}${gray}" "${@}" "${no_color}" >&1
}
print_msg() {
    echo "${green}=>${no_color}${white}" "${@}" "${no_color}" >&1
}

print_warning() {
    echo "${yellow}=> WARNING:${no_color}${white}" "${@}" "${no_color}" >&2
}

print_error() {
    echo "${red}=> ERROR:${no_color}${white}" "${@}" "${no_color}" >&2
}


install_pkg_mgr() {
    if ! command -v brew &> /dev/null; then
        print_msg "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        
        # Add Homebrew to PATH for the current session
        eval "$(/opt/homebrew/bin/brew shellenv)"
        
        # Add Homebrew to PATH permanently
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
        
        print_msg "Homebrew installed successfully."
    else
        print_msg "Homebrew is already installed."
    fi
}
print_header() {
    echo "${blue}
       _     _   ___ _ _
     _| |___| |_|  _|_| |___ ___
   _| . | . |  _|  _| | | -_|_ -|
  |_|___|___|_| |_| |_|_|___|___|${yellow}

  BOOTSTRAP SCRiPT${white}
  ${git_url}${git_repo}${no_color}
" >&1
}
