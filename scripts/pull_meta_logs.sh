scp -oHostKeyAlgorithms=+ssh-rsa msfadmin@192.168.138.130:/var/log/auth.log /tmp/metasploit_auth.log &&
sudo mv /tmp/metasploit_auth.log /var/log/custom/metasploit_auth_$(date +%F_%H-%M-%S).log