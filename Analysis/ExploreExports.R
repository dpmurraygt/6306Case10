#Exploration of the "Total" Export Time Series

TotalAsIs_stl <- stl(TotalAsIs, s.window=5)

#plot the STL decomposition
#par(mfrow=c(3,2))
plot(TotalAsIs_stl, col="black", main="TotalAsIs_stl")

mean(((TotalAsIs_stl$time.series[,3])^2))
