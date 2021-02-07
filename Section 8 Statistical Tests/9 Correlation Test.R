# Calculating correlations
##For Two quantitative variables

# cor = +1.00 Perfect increasing linear relationship
# cor = +0.70 Strong increasing linear relationship
# cor = +0.50 Some increasing linear relationship
# cor = 0.00 No detectable relationship
# 
# cor = 0.00 No detectable relationship
# cor = -0.50 Some decreasing linear relationship
# cor = -0.70 Strong decreasing linear relationship
# cor = -1.00 Perfect decreasing linear relationship



#Example 1
#DO NOT FORGET TO SET YOUR WORKING DIRECTORY
teachInter <- read.csv("studentdBeforeAfterTeachingIntervention.csv", fileEncoding = "UTF-8-BOM")
plot(teachInter$Before, teachInter$After)

plot(After~Before, data=teachInter, col="red",pch=16)

#Pearson Correlation
cor(teachInter$Before, teachInter$After) #Default Pearson
cor(teachInter$Before, teachInter$After, method = "pearson") 

#Spearman correlation
cor(teachInter$Before, teachInter$After, method = "spearman") 
# Pearson correlation of ranks is equivalent to Spearman correlation.
cor(rank(teachInter$Before), rank(teachInter$After))


#Example 2


pulseData <- read.csv("PulseBeforeAfterExercise.csv", fileEncoding = "UTF-8-BOM")

cor(pulseData$Pulse1, pulseData$Pulse2)

cor(pulseData$Height, pulseData$Weight)


cor(pulseData)


# Install "Hmisc" package to get p-values for matrix
install.packages("Hmisc")
require(Hmisc)
# Need to coerce from data frame to matrix
# to get correlation matrix and p-values
rcorr(as.matrix(pulseData))



#Example 3
#install.packages("datasets")
require(datasets)
data("cars")
head(cars)
cor(cars$speed,cars$dist)

# Can test one pair of variables at a time
# Gives r, hypothesis test, and confidence interval
cor.test(cars$speed,cars$dist) #P-value is small so there is a correlation between Speed and dist
detach("package:datasets", unload = TRUE)
detach("package:Hmisc", unload = TRUE)

rm(list = ls())
