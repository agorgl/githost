FROM alpine:latest

RUN apk add --no-cache \
      s6-overlay \
      shadow \
      openssh \
      git \
      gitolite \
      cgit \
      fcgiwrap \
      nginx

ENTRYPOINT ["/init"]
