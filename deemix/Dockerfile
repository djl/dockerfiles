FROM alpine:latest
ARG UID=1000
ARG VERSION
RUN test -n "$VERSION"
RUN adduser -h /deemix -D -u "$UID" deemix
RUN apk add --no-cache --virtual=build-dependencies \
    python3 \
    python3-dev \
    py3-pip \
    gcc \
    g++ \
    libffi-dev && \
    mkdir /downloads && \
    mkdir -p /deemix/.config/deemix && \
    /usr/bin/pip3 install deemix=="$VERSION"
USER deemix
WORKDIR /downloads
ENTRYPOINT []
CMD [ "sh" ]
