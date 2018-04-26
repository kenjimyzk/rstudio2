From tokyor/rstudio

MAINTAINER "kenjimyzk"

# Install packages
RUN Rscript -e "install.packages(c('knitr', 'kableExtra'))"
RUN Rscript -e "install.packages(c('bookdown', 'formatR'))"
RUN Rscript -e "install.packages(c('tinytex', 'rmarkdown'))"
RUN Rscript -e "install.packages(c('Cairo', 'extrafont'))"
RUN Rscript -e "install.packages(c('mosaic', 'mosaicCalc'))"

USER rstudio

RUN Rscript -e "tinytex::install_tinytex()"
RUN Rscript -e "extrafont::font_import(prompt = FALSE)"

USER root
CMD ["/init"]
