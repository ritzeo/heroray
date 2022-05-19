FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -O linux-64-v155.zip  https://github.com/ritzeo/heroray/raw/master/etc/linux-64-v155.zip  && \
    unzip linux-64-v155.zip && \
    chmod +x /xxx && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
