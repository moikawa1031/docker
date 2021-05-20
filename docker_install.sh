#ホストネーム変更
sudo hostnamectl set-hostname mo-docker01
sudo sed -e '2d' /etc/hosts
sudo sed -i '2i 127.0.1.1 mo-docker01' /etc/hosts
sudo reboot

#!/bin/bash

#Docker Install
#既存のパッケージリストの更新
sudo apt -y update
#aptがhttp軽油でパッケージを使用できるようにするいくつかの必要条件パッケージをインストール
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
#公式DockerリポジトリのGPGキーをシステムに追加
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#DockerリポジトリをAPTソースに追加
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
#追加されたリポジトリからDockerパッケージでデータベースを更新
sudo apt -y update
#Dockerリポジトリからインストールを確認
apt-cache policy docker-ce
#Dockerをインストール
sudo apt -y install docker-ce
#Dockerの実行を確認
#sudo systemctl status docker
#再起動
sudo shutdown -r now


#参考
#https://www.tohoho-web.com/ex/shell.html#prompt

