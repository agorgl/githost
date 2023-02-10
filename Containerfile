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

ADD conf/service /etc/s6-overlay/s6-rc.d

ENTRYPOINT ["/init"]
