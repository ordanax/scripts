sudo pacman -S i3-wm i3-gaps i3status sbxkb dmenu pcmanfm ttf-font-awesome feh lxappearance thunar gvfs udiskie xorg-xbacklight ristretto tumbler compton --noconfirm
yay -S polybar
wget https://github.com/ordanax/dots/raw/master/i3wm_v_2/i3wm_config.tar.gz
sudo rm -rf ~/.config/i3/*
sudo rm -rf ~/.config/polybar/*
sudo tar -xzf i3wm_config.tar.gz -C ~/
