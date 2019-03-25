FROM rocker/verse

RUN apt-get update \
  && Rscript -e 'install.packages(c("blogdown","readxl","knitr","kableExtra","dplyr","lubridate","shiny"),dependencies = TRUE)' \
  && Rscript -e 'blogdown::install_hugo()'

CMD ["bash"]
