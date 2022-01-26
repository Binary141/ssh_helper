chmod 755 ssh_helper.sh
cp ssh_helper /opt
echo 'alias sshvm="/opt/ssh_helper.sh"' >> ~/.bashrc
source ~/.bashrc
