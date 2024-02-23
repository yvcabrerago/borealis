# Avahi-Browse Docker Image

Borealis is a Docker image that allows discovering devices using the Avahi mDNS/DNS-SD daemon and the avahi-browse tool.

The inspiration to create this image stems from the lack of options to run the Avahi-Browse tool for discovery in Windows using Docker containers.

## Usage

Just run the image, don't forget to attach it to the host network or a Docker network with discoverable services:

```
docker run --network=host --rm borealis
```

By default, avahi-browse is ran with the arguments --all --terminate, you can overwrite this arguments by passing your own arguments to the docker run command:

```
docker run --network=host --rm borealis -atbk
```
