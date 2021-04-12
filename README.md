# rsas

A basic docker image that implements the shareware, Rocket Streaming Audio Server (RSAS), and adds several environmental variables for easy setup. RSAS broadcasts live audio over HTTP(S), and is a modern replacement for Icecast and SHOUTcast. Read the [RSAS Docs](https://www.rocketbroadcaster.com/streaming-audio-server/docs/) for more information on how it works and what it does.

### rsas CapRover

This image was built to be used on CapRover. Visit the [Caprover Documentation](https://caprover.com/), and use this [One Click App](https://github.com/pcbowers/rsas-caprover) to get started.

### rsas Basics

Running this image will automatically start a server with the following information

```
Port:     8001
Mount:    /example
Username: user
Password: password
```

To change `Mount`, `Username`, and `Password`, run the docker image with the following environment variables:

```.env
ICECAST_MOUNT=/radio
ICECAST_USERNAME=joesmith
ICECAST_PASSWORD=hackme
```

Furthermore, you can change the default port by simply mapping a different port to the docker container (i.e. port 8000). An example setup is displayed as follows:

```shell
docker pull pcbowers/rsas:latest
docker -e ICECAST_MOUNT=/radio -e ICECAST_USERNAME=joesmith -e ICECAST_PASSWORD=hackme -p 0.0.0.0:8000:8001/tcp pcbowers/rsas:latest -d
```

By running the above commands, one can easily access the server at localhost:8000. Furthermore, for connection purposes, one will need to use localhost:8000/radio with the username `joesmith` and the password `hackme` to begin streaming to the server. [Rocket Broadcaster](https://www.rocketbroadcaster.com/) is an easy solution for broadcasting.

> **Note:** Visit localhost:PORT/health to view the current stats of your server. Visit localhost:PORT/MOUNT to view the now-broadcasting stream once you begin broadcasting.
