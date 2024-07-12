#The R code used to install nasapower and download weather data for hot events is as follows:

data <- read.xlsx("data/dairy_4.xlsx",
          sheet = "Prod_2018_to_2023",
          cols = c(1:13))
data$Date <- as.Date(data$Date, origin = "1899-12-30") 


# install.packages("nasapower")
library("nasapower")

daily_ag1 <- get_power(
  community = "ag",
  lonlat = c(-2.4327348,52.7796366),
  pars = c("RH2M", "T2M", "PRECTOTCORR"),
  dates = c("2018-02-19"),
  temporal_api = "daily"
)
