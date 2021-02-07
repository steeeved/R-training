# Histogram Charts for 1 variable --> Quantitative Variable
library("datasets")
# simple example
hist(rnorm(1000),col = colors()[10:20])

data("Orange")
head(Orange)
hist(Orange$circumference,col = colors()[1:10])
# changing the pattern of the histogram bars
hist(Orange$circumference,col = colors()[1:10],density = 20)
# Control where the histogram breaks occur
hist(Orange$circumference,col = colors()[1:10],breaks = c(0,100,200,max(Orange$circumference)))
hist(Orange$circumference,col = colors()[1:10],breaks = c(0,500,1000,1500,max(Orange$circumference)))
# Another example of controlling the breaks
fivenum(Orange$circumference) # fivenum() gives the minimum , the 1st quartile , median, 3rd quartile, maximum
hist(Orange$circumference,col = colors()[1:10],breaks = fivenum(Orange$circumference))

# LOAD DATASETS PACKAGE
require("datasets")
?LakeHuron
data("LakeHuron")  # Annual measurements of the level, in feet, of Lake Huron 1875-1972.
head(LakeHuron)
View(LakeHuron)

# Make a histogram using the defaults
hist(LakeHuron)

#Modify Histogram
hist(LakeHuron,# Save histogram as object
     breaks = 11,  # "Suggests" 11 bins
     #breaks = seq(0,7000,by=100),
     #breaks = c(0,100,300,500,3000,3500),
     freq = FALSE,
     col=colors(), # Or use: col = colors() [626]
     main = "Histogram of level of lake huron 1875-1972",
     xlab = "Measurement of level",
     border = 10,
     density = 5
     )
# IF freq = FALSE, this will draw normal distribution |  Normal curve (if prob = TRUE)
curve(dnorm(x,mean=mean(LakeHuron),sd=sd(LakeHuron)),
      col="black",
      lwd=2,
      add = TRUE)

# Plot : Kernel density lines (if prob = TRUE)
lines(density(LakeHuron),col="chartreuse4")
#Adjusting curve
lines(density(LakeHuron,adjust = 2),col="darkgoldenrod1")
# Plot : Rug (That is, lineplot under histogram)
rug(LakeHuron,col = "red")


#Exercise for USArrests Data
data("USArrests")
USArrests$UrbanPop

