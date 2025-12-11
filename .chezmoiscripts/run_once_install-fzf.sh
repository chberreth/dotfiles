#!/bin/sh


# sudo apt update
# sudo apt install fzf 

# Install fzf from Github. The apt package doesn't create `~/.fzf.zsh` and oh-my-zsh plugin fails to handle 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --no-update-rc

