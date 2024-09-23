# Install Starship if not installed

print_discreet_no_nl "Checking if starship is installed..."
if ! [ -x "$(command -v starship)" ]; then
  print_msg "Not found, installing..."
  curl -O https://starship.rs/install.sh
  sudo chmod +x install.sh
  sudo ./install.sh  -y
  rm install.sh
  print_msg "Starship installed successfully."
fi
print_discreet "OK"