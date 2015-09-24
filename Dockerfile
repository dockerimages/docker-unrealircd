FROM ubuntu:15.10
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
ADD unreal.conf /
ADD deploy-unrealirc.sh /
RUN chmod +x /deploy-unrealirc.sh
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install wget build-essential curl
RUN deploy-unrealirc.sh
