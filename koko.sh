#!/bin/bash
docker build -t php-application . 
docker stop php-app || true
docker rm php-app || true
docker run -p 8098:8081 -p 3307:3306 --name php-app -d kokoko 