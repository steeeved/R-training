#T-tests are a type of hypothesis test that allows you to compare means.
# Comparing paired means: Paired t-test
##Paired sample t-test compares means from the same group at different times (say, one year apart). Before/after 



#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say means doest match

#Consider 20 patient drawn at random from one area,
#their resting systolic blood pressures is
before <- c(128,118,144,133,132,111,149,139,136,126)
after <-c(127,115,142,140,131,132,122,119,129,128)
#H0 = There is no difference.
#H1 = There is a difference.
mean(before)
mean(after)
t.test(before,after, paired = TRUE) #P value is high, So Can not reject Ho
#One tailed test
t.test(before,after, paired = TRUE, alternative = "greater") #P value is high, So Can not reject Ho
t.test(before,after, paired = TRUE, alternative = "less") #P value is high, So Can not reject Ho


#Example 2
 stdData <- read.csv("studentdBeforeAfterTeachingIntervention.csv", fileEncoding = "UTF-8-BOM")
head(stdData)

summary(stdData)

boxplot(stdData)
# Comparing the means of data from two related samples; say,
# observations before and after an intervention on the same participant;
# The marks for a group of students before (pre) and after (post) a teaching intervention
# Research question: Is there a difference in marks following a teaching intervention?
#       
# The 'null hypothesis' might be:
#         H0: There is no difference in mean pre- and post-marks
# And an 'alternative hypothesis' might be:
#         H1: There is a difference in mean pre- and post-marks

t.test(stdData$Before,stdData$After, paired = TRUE)
# It does not matter which variable you put 1st 'Before' or 'after' if you 
# are just focusing on p value HOWEVER,
# if you want to also see the exact t value and CFI then put 'After' 1st


#Two tailed
t.test(stdData$After,stdData$Before, paired = TRUE) #Reject H0  and say There is a difference as the p-value is low
#Findings
#p = 0.004; ie, a very small probability of this
# result occurring by chance, under the null hypothesis of no difference.
# The null hypothesis is rejected, since p < 0.05 (in fact p = 0.004).  
#Findinds from 
# Conclusion:
#         There is strong evidence (t = 3.23, p = 0.004) that the teaching intervention improves marks. In this
# data set, it improved marks, on average, by approximately 2 points. Of course, if we were to take
# other samples of marks, we could get a 'mean paired difference' in marks different from 2.05. This
# is why it is important to look at the 95% Confidence Interval (95% CI).
# p-value
# 3
# If we were to do this experiment 100 times, 95 times the true value for the difference would lie in
# the 95% confidence interval. In our case, the 95% CI is from 0.7 to 3.4. This confirms that, although
# the difference in marks is statistically significant, it is actually relatively small. You would need to
# consider if this difference in marks is practically important, not just statistically significant.

#One-tailed
t.test(stdData$After,stdData$Before, paired = TRUE, alternative = "less") #Can NOT Reject H0

t.test(stdData$After,stdData$Before, paired = TRUE, alternative = "greater") #Reject H0 and say There is a difference as the p-value is low
