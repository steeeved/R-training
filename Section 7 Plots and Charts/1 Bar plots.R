## Bar Chart
#Charts for 1 variable --> Categorical variable

install.packages("MASS") #Installing package
library(help="MASS") # info
library(MASS) # Loading Package
data("wtloss") # Loading data
wtloss
plot(wtloss)

barplot(height = wtloss$Weight,
        names.arg = wtloss$Days,
        xlab = "Days",
        ylab = "Weight",
        main = "Weight Loss Journey",
        col = heat.colors(60))


library("datasets") #Loading Package
data("ChickWeight")
head(ChickWeight)

agg <- aggregate(weight~Time,
                 data = ChickWeight,
                 FUN = mean)
barplot(height = agg$weight,
        names.arg = agg$Time,
        xlab = "Week",
        ylab = "Average Weight",
        main = "Average Chicken Weights by Time",
        las=1, # las gives orientation of axis labels
        horiz = TRUE,
        #border = NA,
        col = topo.colors(12))

#click on Packages
#select the package --> MASS
#See information about a data
data("shuttle")
head(shuttle)
barplot(shuttle$use) #Error

# R cannot create barchart from categorical variables
#that is why, we should  create a table first
# which has the frequencies for each level of the variable.

use <- table(shuttle$use)
use
barplot(use,main = "Shuttle use", col = cm.colors(2))
