# prantlf/golang-make-nodejs-git

[Docker] image: Go language on Alpine Linux with Make, Node.js and Git

[![prantlf/golang-make-nodejs-git](http://dockeri.co/image/prantlf/golang-make-nodejs-git)](https://hub.docker.com/repository/docker/prantlf/golang-make-nodejs-git/)

[This image] is supposed to build and test web browser applications written in [Go]. Back-end often uses `make` as a build tool, which is added by this image. Front-end often contains static assets distributed by [NPM], which include dependencies pulled by [Git], and bundled using build tools running in [Node.js].  This image is built automatically on the top of the tag [`alpine`] from the [golang repository], so that it always runs the current version of [Go] in the latest [Alpine Linux]. [Make], [Node.js], [NPM] and [Git] have to be updated from time to time by triggering a new build manually.

## Tags

- [`latest`]

## Install

```
docker pull prantlf/golang-make-nodejs-git
# or
docker pull prantlf/golang-make-nodejs-git:latest
```

## Use

Just like the image from the [golang repository]. You will be able to call `make` in addition to `go`.

## Build, Test and Publish

The local image is built as `golang-make-nodejs-git` and pushed to the docker hub as `prantlf/golang-make-nodejs-git:latest`.

Remove an old local image:

    make clean

Check the `Dockerfile`:

    make lint

Build a new local image:

    make build

Enter an interactive shell inside the created image:

    make run

Tag the local image for pushing:

    make tag

Login to the docker hub:

    make login

Push the local image to the docker hub:

    make push

## License

Copyright (c) 2020 Ferdinand Prantl

Licensed under the MIT license.

[Docker]: https://www.docker.com/
[This image]: https://hub.docker.com/repository/docker/prantlf/golang-make-nodejs-git
[`alpine`]: https://hub.docker.com/_/golang?tab=tags
[`latest`]: https://hub.docker.com/repository/docker/prantlf/golang-make-nodejs-git/tags
[Go]: https://golang.org/
[golang repository]: https://hub.docker.com/_/golang
[Make]: https://www.gnu.org/software/make/
[Node.js]: https://nodejs.org/
[NPM]: https://docs.npmjs.com/cli/npm
[Git]: https://git-scm.com/
[Alpine Linux]: https://alpinelinux.org/
