##Comparing means with F-test  ANOVA, TUKeYS HSD


#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say means doest match

library(datasets)
# Load data
data(iris)
head(iris)
levels(iris$Species)
## dot chart
dotchart(iris$Sepal.Length, groups =iris$Species, xlab = "sepal length", pch=16 )
## box plot
boxplot(Sepal.Length ~ Species, data = iris)

#Test for equality of means
#H0: All means are equal for all categories
#H1: At least one pair of means are not equal

?oneway.test
#Conduct one-way ANOVA
oneway.test(Sepal.Length ~ Species, data = iris, var.equal = TRUE)
#Having a low p-value means we can reject H0


## compute the t statistic for each pair of categories
?aov
fit <- aov(Sepal.Length ~ Species, data = iris)
fit
summary(fit)
fit$coefficients
fit$residuals
#Sum sq : Sum of square is the sum of all varriances 
#Mean sq : Mean square is the SumSq/2 also called pooled variance
MSE <- summary(fit)[[1]][2,3] # Extract the MSE (Mean Square Error)
MSE

#Post Hoc Comparison

# As the sample size is large, we can instead use the F distribution
# approximation,
fit <- aov(Sepal.Length ~ Species, data = iris)
TukeyHSD(fit)
#and the Studentized Range Distribution to approximate the distribution
#of maximum t values from all pairs of categories.




#Plotting Differences
plot(TukeyHSD(fit))


detach("package:datasets", unload = TRUE)
rm(list = ls())  
