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

# Get top death cases by state
coronavirus %>%
  filter(type == "death") %>%
  group_by(Country.Region) %>%
  summarise(total = sum(cases)) %>%
  arrange(-total) %>%
  head(20)