Docker container for running [Folding@Home](http://foldingathome.org/)

### Usage
```bash
docker run -dt --restart unless-stopped -e USERNAME=`hostname -s` -e EXTRA="--gpu=false" dexter2cz/fahclient
```
or the easiest way to use GPU:
```bash
docker run -dt --restart unless-stopped --privileged -e NVIDIA=440.64.00 -e USERNAME=`hostname -s` dexter2cz/fahclient
```
### Arguments
All arguments are supplied through environment. Keys and usage is detailes below:

| Key           | Default value | Example       | Used for           | 
| ------------- | ------------- | ------------- | ------------------ |
| USERNAME      | Anonymous     | *dexter2cz*   | --user |
| PASSKEY       | *not set*     | *2r32gffdg*   | --passkey |
| TEAM          | 237170        | *0*           | --team |
| POWER         | full          | *medium*      | --power |
| NVIDIA        | *not set*     | *440.64.00*   | NVIDIA driver version |
| EXTRA         | *not set*     | *--gpu=false* | *Additional arguments* |
### Versions
* 7.5.1 - dexter2cz/fahclient
* 7.6.9 - dexter2cz/fahclient:v7.6.9
