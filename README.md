# C7090---Masters-Research-Project

## Data overview: 
                 We have dairy production, health, and fertility data from 2018 to 2023. 
                 From 2019 to 2022 is almost full-year and complete data but there are 
                 some breaks in 2018, 2020, and 2023. 
                 For 2018, there is no data from 1 June to 4 November (5 months and 4 days). 
                 For 2020, there is no data from 4 to 11 July, 29 October to 1 November, and 4 to 10 December.
                 For 2023, no data is available after 31 March. 
                 For the latest draft of clean data, please use data_4.xlsx

## Code:
        The code used to install nasapower and download weather data for hot events is follows:
        install.packages("nasapower")
        load("nasapower")
        library("nasapower")

        daily_ag <- get_power(
         community = "ag",
         lonlat = c(52.7796366,-2.4327348),
         pars = c("RH2M", "T2M", "PRECTOTCORR"),
         dates = c("2018-02-19", "2023-03-31"),
         temporal_api = "daily"
         )
