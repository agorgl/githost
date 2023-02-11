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

RUN usermod -p '*' git \
 && chmod g+rX /var/lib/git/ \
 && addgroup fcgiwrap git

ADD conf/service /etc/s6-overlay/s6-rc.d
ADD conf/nginx /etc/nginx
ADD conf/cgit /etc

ENTRYPOINT ["/init"]
