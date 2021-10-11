#!/bin/bash
sudo useraddd -m -d /home/$1 -s /bin/bash $1
sudo mkdir /home/$1/.ssh
cd /home/gabe/SYS-265/linux/public-keys
sudo cp id_rsa.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh/
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh
