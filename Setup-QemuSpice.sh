echo "This will install Qemu Spice ON TERMUX NO LINUX OS!!! 500mb of space will be used!"
wget https://github.com/Win81VMUser/useful-stuff/raw/main/Android/Termux-commands/qemu-spice-4.2.zip
pkg install unzip -y
echo "Installing qemu..."
unzip qemu-spice-4.2.zip
dpkg -i qemu-spice-4.2/*
dpkg --configure -a
apt --fix-broken install
apt install liblz4
echo "Removing TEMP files..."
apt remove unzip -y
rm -rf *
echo "Done! Now download aSpice app and have fun! Starting test command..."
echo "Press ctrl-c to exit!"
qemu-system-x86_64 -spice port=5900,addr=127.0.0.1,disable-ticketing $@ -monitor stdio
echo "Spice is installed! Have fun!"
