#!/bin/sh
#
# make sure to run these commands to install git
# sudo apt update
# sudo apt install -y git
# git clone https://github.com/michael-clermont1/dotfiles.git
# cd ./dotfiles && sh ./setup.sh
echo Update system
sudo apt-get update
sudo apt-get full-upgrade -y

# Create folder structure
mkdir ~/ICS4U
mkdir ~/ICS4U/Unit1
mkdir ~/ICS4U/Unit1/Unit1-01
mkdir ~/ICS4U/Unit1/Unit1-02
mkdir ~/ICS4U/Unit1/Unit1-03
mkdir ~/ICS4U/Unit1/Unit1-04
mkdir ~/ICS4U/Unit1/Unit1-05
mkdir ~/ICS4U/Unit1/Unit1-06
mkdir ~/ICS4U/Unit1/Unit1-07
mkdir ~/ICS4U/Unit2
mkdir ~/ICS4U/Unit2/Unit2-01
mkdir ~/ICS4U/Unit2/Unit2-02
mkdir ~/ICS4U/Unit2/Unit2-03
mkdir ~/ICS4U/Unit2/Unit2-04
mkdir ~/ICS4U/Unit2/Unit2-05
mkdir ~/ICS4U/Unit2/Unit2-06
mkdir ~/ICS4U/Unit2/Unit2-07
mkdir ~/ICS4U/Unit2/Unit2-08
mkdir ~/ICS4U/Unit2/Unit2-09
mkdir ~/ICS4U/Unit2/Unit2-10
mkdir ~/ICS4U/Unit3
mkdir ~/ICS4U/Unit3/Unit3-01
mkdir ~/ICS4U/Unit3/Unit3-02
mkdir ~/ICS4U/Unit3/Unit3-03
mkdir ~/ICS4U/Unit3/Unit3-04
mkdir ~/ICS4U/Unit3/Unit3-05
mkdir ~/ICS4U/Unit4
mkdir ~/ICS4U/Unit4/Unit4-01
mkdir ~/ICS4U/Unit4/Unit4-02

# Configure git
git config --global user.email "michael.clermont@mths.ca"
git config --global user.name "Michael Clermont"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global fetch.prune true

# Setup SSH
ssh-keygen -t ed25519 -C "michael.clermont@mths.ca"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
echo "Press enter once you add the SSH key into github"
read blank
ssh -T git@github.com

# Load .bachrc file
~/.bashrc
cp ~/dotfiles/.bashrc ~/.bashrc

# Setup typescript
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.bashrc
command -v nvm
nvm install node --lst
nvm install-latest-npm
