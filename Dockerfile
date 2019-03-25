FROM rocker/verse

RUN apt-get update \
  && Rscript -e 'install.packages(c("blogdown"),dependencies = TRUE)' \
  && Rscript -e 'blogdown::install_hugo()'

CMD ["bash"]