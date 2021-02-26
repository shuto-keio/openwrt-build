FROM ubuntu:20.04

RUN apt-get update

# remove find, diff, get-opt
RUN apt-get install -y gcc binutils bzip2 flex python3 perl make grep unzip gawk subversion libz-dev libc-dev rsync
RUN apt-get install -y git wget libncurses5-dev build-essential

RUN useradd -ms /bin/bash ubuntu

USER ubuntu
WORKDIR /home/ubuntu

RUN git clone https://github.com/openwrt/openwrt.git
# WORKDIR /root/openwrt

RUN ./openwrt/scripts/feeds update -a
RUN ./openwrt/scripts/feeds install -a

RUN touch run.sh
RUN echo #!/bin/bash >> run.sh
RUN echo 'cd openwrt' >> run.sh
RUN echo make menuconfig >> run.sh
RUN echo 'make -j8' >> run.sh

