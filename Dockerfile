FROM prantlf/golang-make-nodejs:latest
LABEL maintainer="Ferdinand Prantl <prantlf@gmail.com>"

RUN apk add --no-cache git
