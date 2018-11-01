#!/bin/bash

# zsh
# sudo yum update && 
sudo yum -y install zsh
chsh -s $(which zsh)
# oh-my-zsh
sudo yum -y install git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# 修改~/.zshrc：打开HIST_STAMPS="mm/dd/yyyy"注释
# 

