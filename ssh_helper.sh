term="gnome-terminal -- "

username=""

if [ ${#1} -gt 0 ]
then
	if [[ $1 == "-v" ]]
	then
		if [[ ${#2} -gt 0 ]]
		then
			server=$2
			port=${server:~3}
			echo "ssh $username@ssh.cs.dixie.edu -L $port:$server"
			$term ssh $username@ssh.cs.dixie.edu -L $port:$server && sleep 3 && vncviewer localhost:$port
		else
			echo "Please provide a valid port"
		fi
	elif [[ $1 == "-n" ]]
	then
		if [[ ${#2} -gt 0 ]]
		then
			server=$2
			port=${server:~3}
			echo "ssh $username@ssh.cs.dixie.edu -L $port:$server"
			ssh $username@ssh.cs.dixie.edu -L $port:$server
		else
			echo "Please provide a valid port"
		fi
	else
		echo "Sorry, $1 is not a valid command"
		echo "Please use -v to connect through VNC, or -n to connect without automatic vnc connection"
	fi

else

	echo "What is the server and port you would like to connect to? "
	read server

	port=${server:~3}

	echo "ssh $username@ssh.cs.dixie.edu -L $port:$server"

	read -r -p "Do you want to connect to vnc? [y/N] " response
	case "$response" in
	    [yY][eE][sS]|[yY]) 
		$term ssh $username@ssh.cs.dixie.edu -L $port:$server && sleep 3 && vncviewer localhost:$port
		;;
	    *)
		ssh $username@ssh.cs.dixie.edu -L $port:$server
		;;
	esac
fi
