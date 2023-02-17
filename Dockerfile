FROM rocker/tidyverse:4.2.2

LABEL org.opencontainers.image.licenses="BSD-3-Clause" \
    org.opencontainers.image.source="https://github.com/shntnu/evalzoo-docker" \
    org.opencontainers.image.authors="Shantanu Singh <shantanu@broad.io>"

ENV RENV_PATHS_CACHE=/renv/cache

ENV RENV_VERSION 0.16.0

# Add environment variables to Renviron
RUN echo "" >> ${R_HOME}/etc/Renviron

RUN echo "RENV_PATHS_CACHE=${RENV_PATHS_CACHE}" >> ${R_HOME}/etc/Renviron

# Install renv
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"

RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

# Install dependencies
RUN sudo apt-get install -y libxml2-dev zlib1g-dev

WORKDIR /home/rstudio

ENV RENV_PATHS_LIBRARY /home/rstudio/renvtest/renv/library

RUN git clone https://github.com/shntnu/renvtest.git && cd renvtest && R -e "renv::restore()"
# RUN cd /home/rstudio && git clone https://github.com/cytomining/evalzoo.git && cd evalzoo && R -e "renv::restore()"

RUN chown -R rstudio /home/rstudio

RUN chown -R rstudio ${RENV_PATHS_CACHE}


