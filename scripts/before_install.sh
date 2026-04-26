#!/bin/bash

export HOME=/home/ec2-user

#download node and npm only if not already installed
if [ ! -f "$HOME/.nvm/nvm.sh" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

. $HOME/.nvm/nvm.sh

if ! command -v node &> /dev/null; then
  nvm install --lts
fi

#create our working directory if it doesnt exist
DIR="/home/ec2-user/techflare-backend"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi
