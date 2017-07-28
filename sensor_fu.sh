#!/bin/sh
docker run --device /dev/ttyAMA0:/dev/ttyAMA0 --device /dev/mem:/dev/mem --privileged -ti hypriot/wiringpi /loldht 8
