# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then 
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh >> /tmp/install-homebrew.sh
  sudo chmod +x /tmp/install-homebrew.sh
  sudo NONINTERACTIVE=1 /bin/bash -c /tmp/install-homebrew.sh
  sudo rm /tmp/install-homebrew.sh
fi
