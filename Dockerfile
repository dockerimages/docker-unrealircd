FROM ubuntu:15.10
ENV LC_ALL C
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
 wget build-essential curl
RUN groupadd -r unreal && useradd -r -g unreal unreal
USER unreal
ENV HOME /home/unreal
# RUN mkdir -p /home/unreal
WORKDIR /home/unreal
ADD unreal.conf /
ADD deploy-unrealirc.sh /
ADD config /
RUN chmod +x /deploy-unrealirc.sh
RUN /deploy-unrealirc.sh
CMD /bin/bash -c source /config; /tmp/Unreal$UNREAL_VERSION/unreal start
