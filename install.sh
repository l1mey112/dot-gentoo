clear
cd $(dirname "$BASH_SOURCE")

echo -e "\e[0;32m### INSTALLING ALL ###\e[0m\n"

echo -e "\e[0;35m### installing applications ###\e[0m"
if [ "$1" = "laptop" ]; then
    bash pkgs/install-pkgs.sh laptop
else
    bash pkgs/install-pkgs.sh
fi

echo -e "\e[0;35m### assigning symlinks and copying ###\e[0m"
bash symlink.sh

echo -e "\e[0;35m### installing fonts ###\e[0m"
bash fonts/font-install.sh

echo -e "\e[0;35m### finalising ###\e[0m"
sudo apt update && sudo apt upgrade -y
sudo apt-file update
git config --global user.email "liam12312390@gmail.com"
git config --global user.name "liaml"
sudo apt autoremove -y
sudo mkdir -p /root/.config/rclone/ # for copying later

# enable shutdown without sudo
sudo chmod 4755 /sbin/shutdown
sudo ln -s /sbin/shutdown /usr/bin/

echo -e "\e[0;32m### FINISHED ###\e[0m\n"
echo welcome to the new world.
read
startx
