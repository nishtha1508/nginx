# nginx

#Build the docker image using below command
docker build -t mynginx Dockerfile


#To run the nginx container without persistent volume and mapping 8080 host port to container
docker run -d --name nginx -p 8080:80 mynginx


#Before running container in persistent mode, make sure to create volume that is unique to host
docker volume create nginxdata


#which can be inspect or delete using below commands
docker volume inspect nginxdata
docker volume rm nginxdata


#To run nginx container with persistent volume
#docker run -d --name nginx -v <<volume_name or host_path>>:<<mountable_path>> -p 8080:80 mynginx
docker run -d --name nginx -v nginxdata:/var/log/nginx -p 8080:80 mynginx
