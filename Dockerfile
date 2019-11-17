FROM alpine
# author: liuz "llzmac@163.com"

RUN apk add --no-cache git bash openjdk8-jre \
    && git clone https://github.com/SilentGo/lanproxy-server.git \
    && apk del git 

ENTRYPOINT ["/lanproxy-server/init.sh"]

CMD ["/bin/bash"]
