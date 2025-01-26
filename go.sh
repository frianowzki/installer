#!/bin/bash

# Function: Go Installer
install_go() {
  local GO_VERSION="1.23.0"
  echo -e "\n[2/6] Installing Go Version $GO_VERSION...\n"
  wget "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz"
  sudo rm -rf /usr/local/go
  sudo tar -C /usr/local -xzf "go${GO_VERSION}.linux-amd64.tar.gz"
  rm "go${GO_VERSION}.linux-amd64.tar.gz"

  # Go PATH Configuration
  [ ! -f ~/.bash_profile ] && touch ~/.bash_profile
  echo "export PATH=\$PATH:/usr/local/go/bin:~/go/bin" >> ~/.bash_profile
  source ~/.bash_profile
  mkdir -p ~/go/bin
}

echo "Go installation completed"