FROM rocker/tidyverse:4.2.2

LABEL org.opencontainers.image.licenses="BSD-3-Clause" \
    org.opencontainers.image.source="https://github.com/shntnu/evalzoo-docker" \
    org.opencontainers.image.authors="Shantanu Singh <shantanu@broad.io>"


ENV RENV_VERSION 0.16.0

RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"

RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

RUN sudo apt-get install -y libxml2-dev zlib1g-dev

ENV RENV_PATHS_LIBRARY renv/library

RUN git clone https://github.com/cytomining/evalzoo.git

RUN cd evalzoo && R -e "renv::restore()"

