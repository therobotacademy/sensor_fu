FROM resin/rpi-raspbian:jessie
MAINTAINER Govinda Fichtner <govinda@hypriot.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    git-core \
    build-essential \
    gcc \
    python \
    python-dev \
    python-pip \
    python-virtualenv \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN pip install pyserial
RUN git clone git://git.drogon.net/wiringPi
RUN cd wiringPi && ./build
RUN pip install wiringpi2

RUN git clone https://github.com/technion/lol_dht22 /lol_dht22_src
RUN cd lol_dht22_src && ./configure && make
RUN mv /lol_dht22_src/loldht /loldht && rm -Rf /lol_dht22_src

# Define working directory
WORKDIR /data
VOLUME /data

CMD ["/bin/bash"]
