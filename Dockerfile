#Dockerfile

FROM ubuntu:focal

COPY gcloud.sh /usr/bin
WORKDIR /usr/bin
RUN apt-get update && \
        apt-get install -y \
        curl \
        python3 \
        apt-transport-https \
        ca-certificates \
        gnupg \
&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash","/usr/bin/gcloud.sh"]

# docker build -t jumpbox .
# docker run --name jump -it --entrypoint /bin/bash jumpbox