#test for correlations between Total Exports, Eco/Demo factors and put it in a dataframe

AsIsCorrelate<-data.frame(Field=character(), Correlation=double(),stringsAsFactors = FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list(as.character("TotalPlan"), as.double(cor(TotalAsIs, TotalPlan))),stringsAsFactors=FALSE)
AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list(as.character("CEPI"), cor(TotalAsIs, CEPI)),stringsAsFactors=FALSE)
AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list(as.character("SIGov"), cor(TotalAsIs, SIGov)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list(as.character("Temperature"), cor(TotalAsIs, Temperature)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("Births", cor(TotalAsIs, Births)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("SIExtern", cor(TotalAsIs, SIExtern)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("UrbanoExports", cor(TotalAsIs, UrbanoExports)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("GlobalisationPartyMembers", cor(TotalAsIs, GlobalisationPartyMembers)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("AEPI", cor(TotalAsIs, AEPI)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("PPIEtel", cor(TotalAsIs, PPIEtel)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("NationalHolidays", cor(TotalAsIs, NationalHolidays)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("ChulwalarIndex", cor(TotalAsIs, ChulwalarIndex)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("Inflation", cor(TotalAsIs, Inflation)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("IndepdendenceDayPresents", cor(TotalAsIs, IndependenceDayPresents)),stringsAsFactors=FALSE)

AsIsCorrelate<-rbind.data.frame(AsIsCorrelate,list("InfluenceNationalHolidays", cor(TotalAsIs, InfluenceNationalHolidays)),stringsAsFactors=FALSE)

names(AsIsCorrelate)<-list("Field","Correlation")

Sorted<-AsIsCorrelate[order(AsIsCorrelate$Correlation),]
Sorted
