#!/usr/bin/zsh

ln -s ~/dots/config/vim/vimrc ~/.vimrc

ln -s ~/dots/config/zsh/zshrc ~/.zshrc

ln -s ~/dots/config/profile ~/.profile

ln -s ~/dots/config/zsh/dangill.zsh-theme ~/.oh-my-zsh/themes/jangui.zsh-theme

ln -s /dots/config/polybar ~/.config/polybar

touch ~/dots/config/zsh/custom_env_vars
touch ~/dots/config/zsh/custom_aliases

cp ~/dots/config/zsh/banner ~/.banner
chmod +x ~/.banner

source ~/.zshrc
