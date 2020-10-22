#!/bin/sh
docker stop dev-backup-nfs

docker rm dev-backup-nfs

docker run --name dev-backup-nfs -p 8077:8077 -it \
    -v /Users/jlutz2/Development/micro/backup-mgr/exports:/exports \
    -d backup-nfs


docker logs dev-backup-nfs
