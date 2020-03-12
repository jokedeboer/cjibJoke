#Data bewerking
park <- arrange(parking, updated) %>%
  filter(!label %in% c("P+R","P4") ) %>%
  mutate(label = as.factor(label),
         updated = as.POSIXct(updated, tz = "UTC"))