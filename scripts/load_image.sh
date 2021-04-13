#!/usr/bin/env bash

set -e

aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 669189415304.dkr.ecr.ap-southeast-1.amazonaws.com

docker pull 669189415304.dkr.ecr.ap-southeast-1.amazonaws.com/one2onerepo:latest

docker run --env DATA_FILE="Questions-test.json" 669189415304.dkr.ecr.ap-southeast-1.amazonaws.com/one2onerepo:latest
