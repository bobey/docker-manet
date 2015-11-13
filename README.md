# Docker Manet

Dockerfile for Manet - Website screenshot service powered by Node.js, SlimerJS and PhantomJS

This is a Dockerfile for [vbauer/manet project](https://github.com/vbauer/manet).
The associated docker image is hosted on [Docker Hub](https://hub.docker.com/r/bobey/manet).

## What is Manet?

**Manet** is a REST API server which allows capturing screenshots of websites using various parameters.
It is a good way to make sure that your websites are responsive or to make thumbnails.

## Run using Docker

```sh
docker run -d -p 80:8891 bobey/manet
```

You can pass in every options Manet accepts:

```sh
docker run -d -p 80:8891 bobey/manet --host=0.0.0.0 --cache=3600 --cleanupRuntime --whitelist=...
```

## Build

```sh
git clone https://github.com/bobey/docker-manet.git && cd docker-manet
docker build -t your-namespace/manet .
```
