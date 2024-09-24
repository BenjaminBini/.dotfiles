# Install Oh My Zsh if not installed
print_discreet_no_nl "Checking if omz is installed..."

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    print_msg " Not found, installing ..."
    KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    print_msg "Oh-my-zsh installed successfully."
fi
print_discreet "OK"