#!/bin/bash 

#You must first copy your current hosts file  

#to a file named hosts.header 

#the following instructions are for the script itself 

#Change ownership of the file to root and make the file executable: 

#sudo chown root:root /path/to/update_hosts.sh 

#sudo chmod 700 /path/to/update_hosts.sh 

#Ad an exception for update_hosts.sh to sudoers 

#sudo visudo 

#Below the line that reads '%sudo ALL=(ALL:ALL) ALL', enter the following: 

#user ALL=(ALL) NOPASSWD: /path/to/update_hosts.sh 

#*Replace 'user' with your username 

 
 

#change to a temprary working directory 

cd /tmp 

 
 

#Download the current hosts.txt file 

wget -q http://winhelp2002.mvps.org/hosts.txt 

 
 

#Overwrite the hosts file with the hosts header 

cat /etc/hosts.header > /etc/hosts 

 
 

#Append the hosts.txt data to the hosts file 

#tail -n +26  

sed '22,26d' /tmp/hosts.txt >> /etc/hosts 

 
 

#Delete hosts.txt 

rm /tmp/hosts.txt 

 
 

#Exit with a smile 

exit 
