#INSTALL.sh
This will automatically copy the ssh_helper.sh file to your home directory, make it executable if it isn't, and then add an alias of ```sshvm``` to your .bashrc file. If an alias with the same name exists, just change it to something that is memorable.



#Useage
This script will automate the ssh with port passthrough process used to access Virtual Machines on the VM farm. It also has an option to connect to the VM with VNC Viewer if it is installed. It can be customized for different terminal emulators (but are untested). To use it just run ./ssh_helper or sshvm if you used the installer, copy paste the shakespearean server with port and paste it in. It will ask you if you want to open up VNC viewer, and then will connect in a new terminal window.
