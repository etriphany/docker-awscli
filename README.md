## Description

Docker image packaging for [AWS CLI](http://docs.aws.amazon.com/cli/latest/userguide/installing.html) based on slim **Alpine Linux**.

This image is based on :whale: image [alpine](https://github.com/gliderlabs/docker-alpine/blob/master/versions/library-3.5/Dockerfile).

## Main Components

* Python 2
* AWS CLI


## Usage Examples

Building the image:

```
$ git clone https://github.com/etriphany/docker-awscli.git
$ cd docker-awscli
$ docker build . -t etriphany/awscli
```

Running a container:

```
$ docker run -ti etriphany/awscli
```