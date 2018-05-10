# QNAP Qboat Sunny - LoRa PicoCell Gateway

We use PicoCell Lora Gateway USB dongle on Qboat Sunny and provide QTS-Lite 4.3.4 ``cdc-acm.ko`` kernel module.

### Docker run command:
```bash
docker run -ti --name LORA -v /dev:/dev --privileged --cap-add=ALL {image_name:tag}
```