FROM python:2.7-alpine

# change cnd
# dl-cdn.alpinelinux.org is down!!!
# RUN sed -i -e 's/dl-cdn/dl-4/g' /etc/apk/repositories

RUN apk update && apk upgrade && \
    apk add \
        gcc python python-dev py-pip \
        # greenlet
        musl-dev \
        # sys/queue.h
        bsd-compat-headers \
        # event.h
        libevent-dev \
    && rm -rf /var/cache/apk/*