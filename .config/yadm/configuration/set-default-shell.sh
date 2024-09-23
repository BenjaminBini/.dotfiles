
echo "Checking if ZSH is default shell..."
if [[ $SHELL != "/bin/zsh" ]]; then
  echo "Setting ZSH as default shell..."
  sudo sed -i 's|'$USER':/bin/bash|'$USER':/usr/bin/zsh|g' /etc/passwd
fi