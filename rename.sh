#!/bin/bash

#ホストネーム変更
sudo hostnamectl set-hostname mo-docker01
sudo sed -e '2d' /etc/hosts
sudo sed -i '2i 127.0.1.1 mo-docker01' /etc/hosts
sudo reboot