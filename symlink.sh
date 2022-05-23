cd $(dirname "$BASH_SOURCE")

mkdir -p ~/.config/
cp -r dotconfig/* ~/.config/ 

ln -s home/.xinitrc ~      # mv home/.xinitrc ~
ln -s home/.Xresources ~   # mv home/.Xresources ~
ln -s home/.xsettingsd ~   # mv home/.xsettingsd ~
ln -s home/.bash_aliases ~ # mv home/.bash_aliases ~

source ~/.bashrc

chmod +x bin/*
ln -s bin/* /usr/local/bin/
