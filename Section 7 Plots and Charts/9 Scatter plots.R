## Scatterplots
#Charts for Variables --> Quantitative variables

#DO NOT FORGET TO SELECT WORKING DIRECTORY

teachIntern <- read.csv("studentdBeforeAfterTeachingIntervention.csv",fileEncoding = "UTF-8-BOM")
head(teachIntern)

plot(teachIntern$Before,teachIntern$After)

plot(After~Before,data = teachIntern)

plot(After~Before,data = teachIntern,pch=2, col="red")

pulseData <- read.csv("PulseBeforeAfterExercise.csv" , fileEncoding = "UTF-8-BOM")
pulseData

plot(Pulse2 ~ Pulse1, data = pulseData)

library("datasets")
data("iris")
plot(iris$Sepal.Length,iris$Sepal.Width)

plot(iris$Sepal.Length,iris$Sepal.Width,
     pch  = 16,
     col  = "grey",
     main ="Sepal Length VS Sepal Width from iris dataset",
     xlab = "Sepal Length",
     ylab = "Sepal Width")
# Linear regression line
linearModel <- lm(iris$Sepal.Width ~ iris$Sepal.Length)
summary(linearModel)
# Adding regression line
abline(linearModel,col="red",lwd=3)
# "locally weighted scatterplot smoothing"
lines(lowess(iris$Sepal.Length,iris$Sepal.Width),col = "blue",lwd=1)

# "car" package used for Applied Regression
# It has many variations on scatterplots
install.packages("car")
help(package="car")
library("car")

# "scatterplot" has marginal boxplots, smoothers, and quantile regression intervals
scatterplot(iris$Sepal.Width ~ iris$Sepal.Length,
            pch= 16,
            col = "darkblue",
            main ="Sepal Length VS Sepal Width from iris dataset",
            xlab = "Sepal Length",
            ylab = "Sepal Width"
            )
# Clearing Memory
detach("package:car", unload=TRUE)
detach("package:datasets", unload = TRUE)
rm(list = ls())