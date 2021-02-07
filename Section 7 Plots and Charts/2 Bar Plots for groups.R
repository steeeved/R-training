## Bar Chart
#Bar Charts for For Groups --> Categorical variables
library("MASS")
data("chickwts") # Load data
chick <- chickwts
chick
meanResult <- aggregate(chick$weight~chick$feed,FUN = mean)
meanResult

plot(meanResult) #not good representation for groups
organisedMean <- t(meanResult[,-1]) # Removes first columns, transposes second
organisedMean

meanResult[,1]
colnames(organisedMean) <- meanResult[,1] #assigning feed names
organisedMean

# Modified barplot
barplot(organisedMean,
        main = "Feeds result",
        xlab = "feeds",
        ylab = "weight",
        col = "#009999")
