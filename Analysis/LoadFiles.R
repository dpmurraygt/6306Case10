#Load in the original CSV Files to R

library(fpp) # for time series forecasting and analysis
library(forecast) # for some other forecasting models

ImportedAsIsData <- read.csv(file="Data/ImportedAsIsDataChulwalar.csv", header = F, sep=";", fill = T) 
ImportedPlanData <- read.csv(file="Data/ImportedPlanDataChulwalar.csv", header = F, sep=";", fill = T) 
ImportedIndicators <- read.csv(file="Data/ImportedIndicatorsChulwalar.csv", header = F, sep=";", fill = T)
