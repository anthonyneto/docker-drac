# docker-drac
Sometimes you have to work on old hardware that has really old ssl ciphers this container runs firefox, java, and icedtea to be able to acces things like an idrac 5 for a poweredge 2950.

### running
```
xhost local:root
docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix \
  --privileged \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -e XAUTHORITY=$XAUTHORITY \
  anthonyneto/drac
```

### why do I have to run `xhost local:root`?
https://github.com/jessfraz/dockerfiles/issues/6

### requirements
Firmware: 1.65 (12.08.16) for the RAC
https://www.dell.com/support/home/en-us/drivers/DriversDetails?driverId=D8GP9
