FROM arm32v7/ubuntu:xenial

RUN mkdir lora-net && \
	cd lora-net && \
	apt-get update && \
	apt-get install -y git make gcc vim nano kmod && \
	git clone https://github.com/Lora-net/picoGW_packet_forwarder.git && \
	git clone https://github.com/Lora-net/picoGW_mcu.git && \
	git clone https://github.com/Lora-net/picoGW_hal.git && \
	cd /lora-net/picoGW_hal && \
	make clean all && \
	cd /lora-net/picoGW_packet_forwarder && \
	make clean all

COPY run.sh /
COPY cdc-acm.ko /driver/

WORKDIR /lora-net

CMD bash /run.sh