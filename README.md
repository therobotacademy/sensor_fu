# sensor_fu
POC (proof-of-concept) for deployment of sensors in Smart Cities
----------------------------------------------------------------

Source tutorial can be found [here](http://therobotacademy.com/meetup/docker-linux-containers-raspberry-pi)

**sensor_fu.sh** script automates the execution of this container:

```
docker run --device /dev/ttyAMA0:/dev/ttyAMA0 --device /dev/mem:/dev/mem --privileged -ti hypriot/wiringpi /loldht 8
```
