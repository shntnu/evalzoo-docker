# evalzoo-docker

Docker image for [evalzoo](https://github.com/cytomining/evalzoo).

```bash
docker run -it --rm -v /path/to/evalzoo:/evalzoo shntnu/evalzoo:latest
```

## Build

```bash
docker build -t evalzoo .
docker tag evalzoo:latest shntnu/evalzoo:latest
docker push shntnu/evalzoo:latest
```
