Hosts_Ad_Block
==============

Script to download and update your host file with the latest MVPS hosts file 


todo:

Change ownership of the file to root and make the file executable:

sudo chown root:root /path/to/update_hosts.sh
sudo chmod 700 /path/to/update_hosts.sh

Ad an exception for update_hosts.sh to sudoers

sudo visudo

Below the line that reads '%sudo ALL=(ALL:ALL) ALL', enter the following:

user ALL=(ALL) NOPASSWD: /path/to/update_hosts.sh

*Replace 'user' with your username

You should now be able to execute the script without a sudo password by entering the following:

sudo ./path/to/update_hosts.sh
