#!/bin/bash
set -e  
cd /var/cache/drone/src/projects/nemesis

# [pass tests here]

wrapdocker &  
sleep 5

docker build -t docker-registry/jbthechamp/nemesis .  
docker push docker-registry/jbthechamp/nemesis  
