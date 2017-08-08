#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDu14Wxtv3FlP6HsQcR26pNiNhqjocVXGscy/yy/78GOXjWRfvOfDlaew3tFonYRjyYIHc8o7pAwCRp4e/O/52numesZ3qdHcHaJB4C+TK1x4l5JzYV+iLWMi2DWxKAk38+M5IClhxWFSdYQ0DxWJ88POTCqwcuPOK4emvnQPuE1t6pk/KSoyk/F3wxXh6SnUj+8U9jAgDdK6tdfJHFCx3sNaMdTlKCw57Yv6CHBm/CWa1YIocgdk27HQRZF9uUOob7j1t50lsKf8a74Lybi8UKwpAuGxCuIeDqpA5mdg80emwhpbZQiUg/A2FMpC+yqUjLy82FnG4VITilE3ILHwNZ 30107402@qq.com' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
