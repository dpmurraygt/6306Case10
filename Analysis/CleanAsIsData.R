library(dplyr)
library(tidyr)

#Write a function that takes the data from each "Header" row
#and puts the item from the "Month" column into it's own column
#then repeat it until we hit another month
#Could use slice to grab 2:13 as TOtal

colnames(ImportedAsIsData)<-c("Month","2008","2009","2010","2011","2012","2013","2014")
step1<-gather(ImportedAsIsData,"Year","Value",2:8)

#
              