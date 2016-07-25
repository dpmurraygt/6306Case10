#Model Holt winters Exponent and Damped

Model_holt_4 <- holt(TotalAsIs, exponential=TRUE, damped=TRUE,h=12)
