#/bin/sh
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5lEBvgUqfZo7ddzg3Pr/NRNEKts7A2IPxO6CPkaISkHVNkDfoyYZD+K1T1z//vjOY3G+N1UgLyWcDrq56Can3+MmNsohv89NnzOiKxMxPOVVjciDLDmuK10UA92VuLvJf7waMesBcsSVkiXyYscNdu76hfTj0DXjA3fcIDTUlFak0Cz3vqdZW+I2rA+1g7M3dNkQFf0Pqry24B0Tuhb5F+jwUYCNAEkrGKifm3J9n1jEmHQq4f0fLIQ090XoOPeVJ/HMmU/bxJHGrlWlQPL1lDbJgeU6qdvEVEbwmUBCxW4qzCMCELLJliVQOXLeYB0JHgU7ysE4L0+H96x8wVswr jx0923' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config
systemctl restart sshd
