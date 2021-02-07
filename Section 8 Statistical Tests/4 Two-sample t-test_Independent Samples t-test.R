#T-tests are a type of hypothesis test that allows you to compare means.
#2-Sample T-test / Independent Samples T-test
#2-sample t-test / Independent Samples t-test compares the means for two groups.  


#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say means doest match

#Heart DataSet
browseURL("https://www.kaggle.com/nareshbhat/health-care-data-set-on-heart-attack-possibility")
## Don't forget to set your working directory!
heart <- read.csv("heart.csv", fileEncoding = "UTF-8-BOM") #UTF to avoide i.. problem
colnames(heart)
heartSub <- data.frame(heart$sex,heart$thalach)
colnames(heartSub)
colnames(heartSub) <- c("sex","maxHeartRate")
heartSub
attach(heartSub)
typeof(heartSub)
summary(heartSub)
hist(maxHeartRate, col = colors()[11])
boxplot(maxHeartRate~sex)

#H0 = Max Heart Rate means are equals for both genders
#H1 = There is a difference between Max Heart Rate means for both genders
t.test(maxHeartRate ~ sex) 
#P-value is high we can not reject H0 and say that "We can not say that the heart rate is not the same for both genders"

t.test(maxHeartRate ~ sex, alternative= "greater") #One tailed test
#P-value is high we can not reject H0 and say that "We can not say that the heart rate is not the same for both genders"

t.test(maxHeartRate ~ sex, alternative= "less") #One tailed test
#P-value is high we can not reject H0 and say that "We can not say that the heart rate is not the same for both genders"


#Example 2
sales <- read.csv("sales.csv")
head(sales)
summary(sales)

## Test for a difference in means between offices
## H0: East Office sales and West Office = 0
## H1: East Office sales and West Office != 0
t.test(sales ~ location, data = sales)
#P value is higher than the significant level of 5% So we can not reject H0

t.test(sales ~ location, data = sales, conf = 0.90)
#P value is higher than the significant level of 5% So we can not reject H0



