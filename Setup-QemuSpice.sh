echo "This will install Qemu Spice ON TERMUX NO LINUX OS!!! 500mb of space will be used!"
echo "Installing qemu..."

pkg install qemu-system-x86_64-headless -y
clear
echo "Done! Now download aSpice app and have fun! Starting test command..."
echo "Press ctrl-c to exit!"
qemu-system-x86_64 -spice port=5900,disable-ticketing $@ -monitor stdio
echo "Spice is installed! Have fun!"
