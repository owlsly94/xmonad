# Install everything needed
#
python3 ~/xmonad/install_scripts/pacman-install-script.py
python3 ~/xmonad/install_scripts/yay-install-script.py
sh ~/xmonad/install_scripts/npm_install.sh
#
# Copy config files
#
cp -r ~/xmonad/config/* ~/.config/
#
# Enable Touchpad
#
sudo cp ~/xmonad/install_scripts/touchpad/30-touchpad.conf /etc/X11/xorg.conf.d/
#
# Oh My Zsh
#
sh ~/xmonad/install_scripts/oh-my-zsh.sh
#
# P10K
#
sh ~/xmonad/install_scripts/p10k.sh
#
# Copy home configs
#
cp -r ~/xmonad/home/* ~/
#
# Copy XMonad and XMobar
#
cp -r ~/xmonad/.xmonad ~/
#
# Recompile and restart XMonad
#
xmonad --recompile && xmonad --restart
