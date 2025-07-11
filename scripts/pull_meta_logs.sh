TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

scp -i ~/.ssh/id_rsa \
-oHostKeyAlgorithms=+ssh-rsa \
-oPubkeyAcceptedKeyTypes=+ssh-rsa \
msfadmin@192.168.138.130:/var/log/auth.log "/var/log/custom/metasploit_auth_${timestamp}.log"