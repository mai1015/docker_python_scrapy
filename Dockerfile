FROM python:3-alpine

RUN mkdir -p /app
WORKDIR /app

# install envirnment
RUN apk add --no-cache --virtual .build-deps build-base python-dev \
	libxslt-dev py-pip jpeg-dev zlib-dev \
	openssl-dev libxml2-dev libffi-dev && \
	apk del .build-deps

# add required lib to run
RUN apk add --no-cache libxslt libjpeg-turbo

# install scrapy
RUN pip install --no-cache-dir pip install scrapy requests pillow

# Install nodemon to debug easier
RUN apk add --no-cache nodejs && npm i -g nodemon && npm uninstall -g npm

# Install requirements
COPY requirements.txt /app/requirements.txt

RUN apk add --no-cache --virtual .build-deps build-base python-dev \
	pip install --no-cache-dir -r requirements.txt && \
	apk del .build-deps

COPY src /app

ENV PORT 80
EXPOSE 80

# Run with nodemon
CMD ["nodemon", "--exec", "python", "app.py"]