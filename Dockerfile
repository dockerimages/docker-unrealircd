FROM ubuntu:15.10
ENV LC_ALL C
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
 wget build-essential curl
ADD unreal.conf /
ADD deploy-unrealirc.sh /
ADD config /
RUN chmod +x /deploy-unrealirc.sh
RUN /deploy-unrealirc.sh
