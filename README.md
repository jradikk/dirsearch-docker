# Dirsearch in Docker
Dockerfiles for building and running [dirsearch](https://github.com/maurosoria/dirsearch/) as a docker container

Dockerfile.legacy - should be used in order to build an image with old docker versions (prior to 17.05)

Ready-to-use image can be found in my [Docker hub](https://hub.docker.com/r/jradik/dirsearch-docker/)


## Examples

In order to pull the built docker image:
 - `docker pull jradik/dirsearch-docker:latest`

In order to pull the built legacy docker image:
 - `docker pull jradik/dirsearch-docker:legacy`

In order to build docker image manually:
 - from Dockerfile
`docker build .`
 - from legacy Dockerfile
 `docker build -f Dockerfile.legacy .`
