#Dockerfile

FROM ubuntu:focal

COPY gcloud.sh /usr/bin
WORKDIR /usr/bin
RUN apt-get update && \
        apt-get install -y \
        curl \
        wget \
        python3 \
        apt-transport-https \
        ca-certificates \
        gnupg \
        tmux \
&& rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/gcloud.sh"]
#CMD ["sleep", "infinity"]

# docker rm jump && docker build -t jumpbox .
# docker run --name jump -it --entrypoint /bin/bash jumpbox
