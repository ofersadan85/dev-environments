# dev-environments

This repository contains a collection of development environments I commonly use. Each environment is a Docker image that can be used to run a container with the environment.

## Build and push

First, set the image tag and the docker file path in an environment variable. Then, build and push the image. The example below shows how to build and push the `alpine-base` image.

In Linux:

```bash
export IMAGE_TAG=alpine-base
docker build -f $IMAGE_TAG.dockerfile -t ofersadan85/dev:$IMAGE_TAG .
docker push ofersadan85/dev:$IMAGE_TAG
```

In Windows (Powershell):

```powershell
$env:IMAGE_TAG = "alpine-base"
docker build -f "$env:IMAGE_TAG.dockerfile" -t "ofersadan85/dev:$env:IMAGE_TAG"
docker push "ofersadan85/dev:$env:IMAGE_TAG"
```
