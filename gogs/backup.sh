#!/bin/bash  
# description:  gogs buckup script  

docker exec gogs /bin/bash -c "export USER=git && /app/gogs/gogs backup && mv /app/gogs/build/* /data/backup && cd /data/backup && ls -t | tail -n +11 | xargs rm"
