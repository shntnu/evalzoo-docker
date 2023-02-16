# evalzoo-docker

Docker image for [evalzoo](https://github.com/cytomining/evalzoo).

```bash
docker run -it --rm -v ~/Desktop/input:/input shntnu/evalzoo:latest
```

## Build

```bash
docker build -t evalzoo .
docker tag evalzoo:latest shntnu/evalzoo:latest
# docker login
docker push shntnu/evalzoo:latest
```

Log in at <http://localhost:8787/> using the crendentials `rstudio` / `yourpassword`.

Look up <https://rocker-project.org/> if the credentials do not work.

## Notes

<https://rstudio.github.io/renv/articles/docker.html>
