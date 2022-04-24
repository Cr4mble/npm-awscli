FROM alpine:3.15

RUN apk add --no-cache \
  python3=3.9.7-r4 \
  py3-pip=20.3.4-r1 \
  nodejs=16.14.2-r0 \
  npm=8.1.3-r0 \
  && npm install -g @angular/cli@13.3.3 \
  && pip3 install --upgrade pip \
  && pip3 install --no-cache-dir \
  awscli==1.22.101 \
  && rm -rf /var/cache/apk/*
