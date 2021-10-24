#! /bin/bash
sudo pacman -S terminator picom feh i3 dmenu vim thunar zsh lxappearance adapta-gtk-theme papirus-icon-theme breeze yay paru xorg code 
cd 

git clone https://github.com/ninjjja91/conf

cd conf

cp .bashrc /home/m4z3/.bashrc

cp config /home/m4z3/.config/i3/config

sudo cp i3status.conf /etc/i3status.conf

cp picom.conf /etc/xdg/picom.conf

cd 

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



