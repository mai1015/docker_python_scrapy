# docker_python_scrapy
[![Build Status](https://travis-ci.org/mai1015/docker_python_scrapy.svg?branch=master)](https://travis-ci.org/mai1015/docker_python_scrapy)

Docker python with scrapy installed

Pre-configurate python environment in docker

## Installed 
- nodemon help debug faster
- redis for store data
- required lib to build scrapy

## Getting start
You get running scrapy out of the box. 

If just getting started, you can create project with this.
```
docker run --mount type=bind,src="/path/to/code",target="/app" -t mai1015/python_scrapy:latest scrapy startproject web 
```

If you got your code ready, you can go ahead
```
docker run --mount type=bind,src="/path/to/code",target="/app" mai1015/python_scrapy:latest
```
It will run app.py with nodemon which will restart when detecting changes on files