require(datasets)
#Exercise for USArrests Data
data("USArrests")
USArrests$UrbanPop
# Make a histogram using the defaults
hist(USArrests$UrbanPop)

#Modify Histogram
hist(USArrests$UrbanPop,# Save histogram as object
     breaks = 10,  # "Suggests" 11 bins
     #breaks = seq(0,7000,by=100),
     #breaks = c(0,100,300,500,3000,3500),
     freq = FALSE,
     col=colors()[626], # Or use: col = colors() [626]
     main = "Histogram of Urban Population",
     xlab = "Measurement of level",
     border = 0,
     #density = 5
)
# IF freq = FALSE, this will draw normal distribution |  Normal curve (if prob = TRUE)
curve(dnorm(x,mean=mean(USArrests$UrbanPop),sd=sd(USArrests$UrbanPop)),
      col="black",
      lwd=2,
      add = TRUE)

# Plot : Kernel density lines (if prob = TRUE)
lines(density(USArrests$UrbanPop),col="chartreuse4")
#Adjusting curve
lines(density(USArrests$UrbanPop,adjust = 2),col="darkgoldenrod1")
# Plot : Rug (That is, lineplot under histogram)
rug(USArrests$UrbanPop,col = "red")

detach("package:datasets", unload = TRUE)
rm(list = ls())
