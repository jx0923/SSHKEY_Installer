#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAyrSviOPHvTwRsD4/yWd8er0yCPTrTl3WrgDM0Stt7tYyNkbeh4b0qILAwcP6zwjj3l7nzzJoyjTC439yjkcKt9kmNAaLCUKw+gdpDa/SztObAg9SA53vAgrxR016erQxPMP6V6hPPZtAYLAhdtIARfIr0FzlvzZ/3+dDkokYFm5LE7723QuKYo+bt1jjWlGRDvwGYDXXBOgz6dKu3UryaaQj5BS8G9bgksymf2F+MJBVToW5qSWrPWN9pfDc+nGTN0VWyIdVY00KKG/R8MCX7ECrIAuM0CXaPrmBQYF+gAtBUyQsDUxV6LaMDmlo3tOQi+3lY/5d8JI2ZKtlnrHEow== root@localhost.localdomain' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
