term="gnome-terminal -- "
#term="konsole -e " For KDE desktop environments mostly
#term="xterm -e " Older terminal emulator


username=""

echo "What is the server and port you would like to connect to? "
read server

port=${server:~3}

echo "ssh $username@ssh.cs.dixie.edu -L $port:$server"

read -r -p "Do you want to connect to vnc? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
	$term ssh $username@ssh.cs.dixie.edu -L $port:$server && sleep 5 && vncviewer localhost:$port
        ;;
    *)
	ssh $username@ssh.cs.dixie.edu -L $port:$server
        ;;
esac
