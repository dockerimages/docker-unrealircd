FROM ubuntu:14.04
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
ADD unreal.conf /
ADD deploy-unreal.sh /
RUN chmod +x /deploy-unreal.sh
RUN echo 'APT::Install-Recommends "0"; \n\
APT::Get::Assume-Yes "true"; \n\
APT::Get::force-yes "true"; \n\
APT::Install-Suggests "0";' > /etc/apt/apt.conf.d/01buildconfig \
 && apt-get update \
 && apt-get upgrade \
 && apt-get install wget build-essential curl
RUN deploy-unrealirc.sh
