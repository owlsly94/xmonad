# Configure LightDM GTK
#
sudo pacman -S lightdm lightdm-gtk-greeter
#
# Copy background
#
sudo cp ~/.config/wallpapers/witch.jpg /usr/share/pixmaps/
#
# Copy config
#
sudo cp ~/xmonad/install_scripts/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/
