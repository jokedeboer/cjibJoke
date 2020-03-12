#corona

install.packages("coronavirus")
library(coronavirus)
corona <- data("coronavirus")
require(dplyr)


# Get top confirmed cases by state
coronavirus %>%
  filter(type == "confirmed") %>%
  group_by(Country.Region) %>%
  summarise(total = sum(cases)) %>%
  arrange(-total) %>%
  head(20)

## install.packages("remotes")
remotes::install_github("GuangchuangYu/nCov2019")

library(nCov2019)

# Laatste info downloaden
get_nCov2019()

# Inlezen
data <- load_nCov2019()

data$data$city

sum(data$data$cum_dead)
