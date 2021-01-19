# docker-drac
Sometimes you have to work on old hardware that has really old ssl ciphers this container runs firefox, java, and icedtea to be able to acces things like an idrac 5 for a poweredge 2950.

### giving root access to x display
https://github.com/jessfraz/dockerfiles/issues/6
```
xhost local:root
```

### running
```
docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix \
  --privileged \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -e XAUTHORITY=$XAUTHORITY \
  anthonyneto/drac
```
