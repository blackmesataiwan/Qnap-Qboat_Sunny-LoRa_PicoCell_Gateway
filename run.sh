#!/bin/bash

insmod /driver/cdc-acm.ko
cd /lora-net/picoGW_packet_forwarder/lora_pkt_fwd                                                                                                                                                                                                                       
./lora_pkt_fwd
cd /lora-net/
/bin/bash