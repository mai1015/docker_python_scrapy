# docker_python_scrapy
[![Build Status](https://travis-ci.org/mai1015/docker_python_scrapy.svg?branch=master)](https://travis-ci.org/mai1015/docker_python_scrapy)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fmai1015%2Fdocker_python_scrapy.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fmai1015%2Fdocker_python_scrapy?ref=badge_shield)

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

## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fmai1015%2Fdocker_python_scrapy.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fmai1015%2Fdocker_python_scrapy?ref=badge_large)