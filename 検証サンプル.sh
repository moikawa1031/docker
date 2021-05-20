#Dockerへログイン
sudo docker login

#Dockerイメージ検索
sudo docker search nginx |more


#bitnami nginx
https://hub.docker.com/r/bitnami/nginx

#Dockerイメージダウンロード
sudo docker pull bitnami/nginx

#ダウンロードしたイメージを確認
sudo docker images

#Docker Image 削除
sudo docker rmi bitnami/nginx

#Dockerイメージ起動
sudo docker run -p 9000:8080 bitnami/nginx:latest
http://localhost:9000