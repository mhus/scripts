#!/bin/bash

# Themes
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# https://github.com/agnoster/agnoster-zsh-theme

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd /tmp
git clone https://github.com/powerline/fonts.git --depth=1

cd fonts
./install.sh

cd ..
rm -rf fonts

