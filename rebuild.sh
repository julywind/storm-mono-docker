#!/bin/bash

docker build -t="julywind/zookeeper" zookeeper
docker build -t="julywind/storm-nimbus" storm-nimbus
docker build -t="julywind/storm-supervisor" storm-supervisor
docker build -t="julywind/storm-ui" storm-ui