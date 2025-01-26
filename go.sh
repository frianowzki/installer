cd $HOME && \
ver="1.23.5" && \
echo -e "Installing Go $GO_VERSION..."
wget "https://golang.org/dl/go1.23.5.linux-amd64.tar.gz" && \
sudo rm -rf /usr/local/go && \
sudo tar -C /usr/local -xzf "go1.23.5.linux-amd64.tar.gz" && \
rm "go1.23.5.linux-amd64.tar.gz" && \
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> ~/.bash_profile && \
source ~/.bash_profile && \
mkdir -p ~/go/bin && \
go version
