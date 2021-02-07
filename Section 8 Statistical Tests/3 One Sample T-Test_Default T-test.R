#T-tests are a type of hypothesis test that allows you to compare means.

# One-sample (compare sample mean  to known mean)
# Default t-test (compares mean to 0) 
#One-sample t-test compares one sample mean to a null hypothesis value

#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say means doest match



?t.test
#Ho = true mean is  equal to 0
#H1 = true mean is not equal to 0 / There is a difference
data <- c(0.9,-0.8,1.3,-0.3,1.7)
t.test(data) 
#As the p-value 0.30 > 0.05 that is why we can not say that the true mean is not equal to 0

library(datasets)
data("iris")
mean(iris$Sepal.Width)
hist(iris$Sepal.Width)
#Ho = true mean is  equal to 0
#H1 = true mean is not equal to 0 / There is a difference
t.test(iris$Sepal.Width)
#As the p-value is very small < 0.05 that is why we can  say that the true mean is not equal to 0

t.test(iris$Sepal.Width, alternative = "greater") #Reject H0
#As the p-value is very small < 0.05 that is why we can  say that the true mean is not equal to 0

#mu is the population mean
t.test(iris$Sepal.Width, alternative = "greater", mu=3) #Reject H0
#As the p-value is very small = 0.05 that is why we can  say that the true mean is not equal to 0


#mu is the population mean
t.test(iris$Sepal.Width, alternative = "greater", mu=4) #We can not Reject H0
#As the p-value is very large > 0.05 that is why we can not say that the true mean is not equal to 0
#Can not reject H0 as the mean 3.03 is not greter than our population mean 4
