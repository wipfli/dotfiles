#!/bin/bash

apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i '/# DISABLE_AUTO_UPDATE="true"/c\DISABLE_AUTO_UPDATE="true"' ~/.zshrc
sed -i '/plugins=(git)/c\plugins=(git zsh-autosuggestions)' ~/.zshrc
echo 'exec zsh' >> ~/.bashrc
