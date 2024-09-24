pkg_list=("git"
          "eza"
          "zsh"
          "curl"
          "bat"
          "starship"
          "ranger"
          "w3m"         # Optional dependency for 'ranger'.
          "highlight"   # Optional dependency for 'ranger'.
          "thefuck"
          "tree"
          "unzip")

for pkg in "${pkg_list[@]}"; do
    print_discreet_no_nl "Checking for $pkg..."
    if ! [ -x "$(command -v $pkg)" ]; then
        print_msg " Not found, installing ..."
        brew install $pkg
        print_msg "Package $pkg installed successfully."
    else
        print_discreet "OK"
    fi
done