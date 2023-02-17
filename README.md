# evalzoo-docker

Docker image for [evalzoo](https://github.com/cytomining/evalzoo).

```bash
docker pull shntnu/evalzoo

docker run --rm -ti -v ~/Desktop/input:/input -e PASSWORD=rstudio -p 8787:8787 shntnu/evalzoo:latest
```

## Build

```bash
docker build --no-cache -t evalzoo .
docker tag evalzoo:latest shntnu/evalzoo:latest
# docker login
docker push shntnu/evalzoo:latest
```

Log in at <http://localhost:8787/> using the crendentials `rstudio` / `rstudio`.

Look up <https://rocker-project.org/> to learn more about the base image.

## Notes

- <https://rstudio.github.io/renv/articles/docker.html>
- <https://gist.github.com/KasperSkytte/270ceb8bc19af7f3bd24c8f9f08f259a>
- <https://github.com/aforsythe/r-seurat/blob/main/Dockerfile>
- <https://community.rstudio.com/t/a-workflow-for-research-based-on-renv-and-docker/99838/4>
