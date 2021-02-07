#One qualitative variable 
# One sample chi-square test  | goodness of fit test.
#One sample chi-square goodness of fit test determines 
#if a sample data matches a population. 



#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say means doest match

#Q1: Fitness Trainer has determined the following counts of calories of its client.
#2000, 2800, 3000, 1500, 1800,3200,3500

#Use chisq.test to obtain a p-value, to test following hypothesis
# H0: Calories are equaly spread  
# H1: Calories are not equaly spread 

caloriesPerDay <- c(2000, 2800, 3000, 1500, 1800,3200,3500)
names(caloriesPerDay) <- c("Mon", "Tues", "Wed", "Thrus", "Fri", "Sat", "Sun")
caloriesPerDay
barplot(caloriesPerDay, col=colors())

chisq.test(caloriesPerDay)# Reject H0, As p-value is very low, which means All counts are not equal


## Q2. Cricket Batsmen are either Left Handed LH or Right Handed RH
#Counts of 74 Australian crickters found 29 LH and 45 Right Hand

#Hypothesis:#According to Australian cricket board 45% should be LH, 55% RH

#Use chisq.test to see if the data is consistent with this hypothesis

batesmanCount <- c(29,45)
names(batesmanCount) <- c("LH","RH")
barplot(batesmanCount)

#Expected Proportion

e <- c(0.45,0.55)
## test to see if data matches proportions
chisq.test(batesmanCount, p = e)

#As the p-value is high, We can not say that the proportions don't match




