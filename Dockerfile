FROM amd64/ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn
ENV TZ=Asia/Hong_Kong

# Update apt cache
RUN apt-get -y update
RUN apt-get -y upgrade

# Install Docker
RUN apt-get install -y curl
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

# Install Python
RUN apt-get install -y --no-install-recommends python3.8 python3-pip

# Mount project directory
RUN mkdir /ansible-adoptopenjdk
WORKDIR /ansible-adoptopenjdk
CMD /bin/bash
