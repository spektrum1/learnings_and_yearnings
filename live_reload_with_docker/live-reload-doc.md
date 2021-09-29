Issues talked about when I initially started learning Docker were about how to deploy services easily with standardized environments. When performing exercises however, I would rebuild or restart my images every time I made changes to my source code, which seemed well.. not viable on scale.

A solution to this problem is mounting your source code into the container as a volume, then running a live reload tool to track changes to files within the volume, which will then reload the application on the container when detected, thus not requiring a rebuild nor restart of the image.

https://www.freecodecamp.org/news/how-to-enable-live-reload-on-docker-based-applications/

The link above provides a helpful guide for setting this up with node, and taking a look in my live-reload file will show a very simple implementation. 

other helpful sources:
https://docs.docker.com/storage/volumes/