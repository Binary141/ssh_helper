chmod 755 ssh_helper.sh
cp ./ssh_helper.sh ~/.ssh_helper.sh
echo 'alias sshvm="~/.ssh_helper.sh"' >> ~/.bashrc
