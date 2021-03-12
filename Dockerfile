FROM rocker/verse:latest

RUN apt-get update -qq && apt-get install -y \
    libssl-dev \
    libcurl4-gnutls-dev

RUN R -e "install.packages('plumber')"

EXPOSE 8000

COPY / /

ENTRYPOINT ["Rscript", "main.R"]