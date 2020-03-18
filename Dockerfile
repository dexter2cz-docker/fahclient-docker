FROM debian

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget ca-certificates bzip2 kmod procps \
    && rm -r /var/lib/apt/lists/* \
    && apt-get clean

RUN wget -q https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb
RUN dpkg -i fahclient_7.5.1_amd64.deb
RUN rm -f fahclient_7.5.1_amd64.deb

#EXPOSE 36330 7396

#RUN wget -q http://us.download.nvidia.com/tesla/440.64.00/NVIDIA-Linux-x86_64-440.64.00.run
#RUN chmod +x NVIDIA-Linux-x86_64-440.64.00.run
#RUN sh /NVIDIA-Linux-x86_64-440.64.00.run -s --no-kernel-module

COPY start.sh /

WORKDIR /var/lib/fahclient

CMD /start.sh
