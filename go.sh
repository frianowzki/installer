wget https://go.dev/dl/go1.23.5.linux-amd64.tar.gz

sudo rm -rf /usr/local/go

sudo tar -C /usr/local -xzf go1.23.5.linux-amd64.tar.gz

source ~/.bash_profile

mkdir -p ~/go/bin

go version
