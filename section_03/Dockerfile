ARG VERSION=18.04

FROM ubuntu:${VERSION}

RUN apt-get update && apt-get install -y curl nginx \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
