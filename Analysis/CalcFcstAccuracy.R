#Calculate the forecast accuracy for all of the forecast models
#This is ugly code, but couldn't get lapply or a loop to work correctly storing the data

#Simple Exponential Smoothing
Current<-accuracy(Model_ses)
ModelAccuracy<-(Current)

#Basic Holt Winters Model 
Current<-accuracy(Model_holt_1)
ModelAccuracy<-rbind(ModelAccuracy,Current)

#Basic Holt Winters Model, exponential trend
Current<-accuracy(Model_holt_2)
ModelAccuracy<-rbind(ModelAccuracy,Current)

#Basic Holt Winters Model, dampened trend
Current<-accuracy(Model_holt_3)
ModelAccuracy<-rbind(ModelAccuracy,Current)

#Basic Holt Winters Model, dampened and exponential trend
Current<-accuracy(Model_holt_4)
ModelAccuracy<-rbind(ModelAccuracy,Current)

#Holt Winters Additive Seasonal trend
Current<-accuracy(Model_hw_1)
ModelAccuracy<-rbind(ModelAccuracy,Current)

#Holt Winters Additive Multiplicative trend
Current<-accuracy(Model_hw_2)
ModelAccuracy<-rbind(ModelAccuracy,Current)

NewModelNames<-c("Model_ses", "Model_holt_1", "Model_holt_2", "Model_holt_3", "Model_holt_4","Model_hw_1", "Model_hw_2")
rownames(ModelAccuracy)<-NewModelNames
ModelAccuracy