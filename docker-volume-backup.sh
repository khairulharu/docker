docker container stop mongovolume

docker container create --name nginxbackup --mount "type=bind,source=/home/khairulaswad/Documents/learn-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container rm nginxbackup

docker container start mongovolume