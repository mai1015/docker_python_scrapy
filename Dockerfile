FROM python:3-alpine

RUN mkdir -p /app
WORKDIR /app

RUN apk update && apk add nodejs && npm i -g nodemon && npm uninstall -g npm

# Install requirements.txt
COPY requirements.txt /app/requirements.txt

RUN apk add --no-cache --virtual .build-deps build-base python-dev \
	libxslt-dev py-pip jpeg-dev zlib-dev \
	openssl-dev libxml2-dev libffi-dev && \
	pip install --no-cache-dir -r requirements.txt && \
	apk del .build-deps

# add required lib to run
RUN apk add --no-cache libxslt libjpeg-turbo

COPY src /app

ENV PORT 80
EXPOSE 80

CMD ["python", "app.py"]