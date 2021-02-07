##Double Proportional Test
#Comparing more than 2 or more than 2 proportions

#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say proportion doest match


#proportion test let you compare 2 proportions
#and help you decide whether those proportions are significantly different or not
#resultant value is p-value which is the probability value 

?prop.test

#Now suppose we are analyzing not 1 student but 2 students acceptance rate


appliedUniversities <- c(20,20) #Trials
acceptanceRate <- c(14,11) #Success
#two.sided
#H0 = Both students have equal acceptance rate
#H1 = Both students have not equal acceptance rate
prop.test(acceptanceRate,appliedUniversities, conf.level = .95)
# If there are only two groups, then it gives a confidence
# interval for the difference between the groups; 
# the default CI is .95
#As the p-value is very high .51 > .05 (sig. level), that is why we can not reject H0, but can not say Both students have equal acceptance rate


#Now suppose we are analyzing 3 or more students acceptance rate
#H0 = students have equal acceptance rate
#H1 = students have different acceptance rate
appliedUniversities <- c(20,20,30,25,40) #Trials
acceptanceRate <- c(14,17,18,21,9) #Success
prop.test(acceptanceRate,appliedUniversities, conf.level = .95)
#Reject H0, Accept H1. As the p-value=4.743e-07 is very small, we can say that the students have different acceptance rate
