FROM r-base:latest

RUN R -e "install.packages('plumber', repo='http://cran.rstudio.com/')"

COPY . .

ENTRYPOINT ["Rscript", "main.R"]