FROM ubuntu:14.04
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
ADD unreal.conf /
ADD deploy-unrealirc.sh /
RUN chmod +x /deploy-unrealirc.sh
RUN echo 'APT::Install-Recommends "0"; \n\
APT::Get::Assume-Yes "true"; \n\
APT::Get::force-yes "true"; \n\
APT::Install-Suggests "0";' > /etc/apt/apt.conf.d/01buildconfig \
 && apt-get update \
 && apt-get upgrade \
 && apt-get install wget build-essential curl
RUN deploy-unrealirc.sh
