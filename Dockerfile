FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y curl git zsh

COPY . /root/.setup
WORKDIR /root/.setup

RUN zsh setup.zsh

ENTRYPOINT ["/bin/zsh"]
