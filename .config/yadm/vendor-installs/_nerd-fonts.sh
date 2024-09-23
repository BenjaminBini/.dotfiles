print_discreet_no_nl "Checking if FiraCode Nerd Font is installed..."
if [ ! -f "$HOME/.fonts/FiraCodeNerdFont-Regular.ttf" ]; then
    print_msg " Not found, installing ..."
    mkdir -p $HOME/.fonts
    cd $HOME/.fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf
    fc-cache -f -v
    print_msg "Nerd Fonts installed successfully."
fi
print_discreet "OK"