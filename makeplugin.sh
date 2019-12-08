#!/usr/bin/bash

PLUGIN_HOME=`pwd`

echo "Delete any existing images...."
docker ps -a | grep rootfsimage | awk '{print $1}' | xargs docker rm

cd $PLUGIN_HOME/plugin/install/docker-volume-hedvig
docker build -t rootfsimage .
docker create rootfsimage true

IMAGE_ID=`docker ps -a | grep rootfsimage | awk '{print $1}'`

sudo docker export $IMAGE_ID | sudo tar -x -C $PLUGIN_HOME/plugin/install/docker-volume-hedvig/rootfs/
docker rm -vf $IMAGE_ID
docker rmi rootfsimage

cd $PLUGIN_HOME/plugin/install
ls rootfs/*
cp -r rootfs/bin/* docker-volume-hedvig/rootfs/bin/
cp -r rootfs/etc/* docker-volume-hedvig/rootfs/etc/
cp -r rootfs/run/* docker-volume-hedvig/rootfs/run/
cp -r rootfs/var/* docker-volume-hedvig/rootfs/var/

docker plugin create hedvig/hedvig-volume:dev-ee-centos docker-volume-hedvig
