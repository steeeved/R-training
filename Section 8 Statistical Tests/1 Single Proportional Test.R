##Single Proportional Test
#single proportion test let you compare 2 proportions
#and help you decide whether those proportions are significantly different or not
#resultant value is p-value which is the probability value 

#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say proportion doest match




?prop.test

# A student got accepted for a Bachelor program in university.
# 14 unis sent him offer letter out of 20 universities he he had
#applied in. Is the acceptance rate is  significantly greater than 50%?

a <- array(c(14,20),dim = c(1,2))
a
prop.table(a)


#H0 = the acceptance rate is significantly greater than 50%
#H1 = the acceptance rate is  not significantly greater than 50%

prop.test(14,20) #P-Value is high .11 > .05 (significant level) we can not say that the acceptance rate is  significantly greater than 50%, Cant reject H0
#Furthermore, this is 2-tailed test. our research question ask for "greater than 50%" which is infact 1-tailed test.
prop.test(140,200) #P-value is low 2.322e-08 < 0.05 (significant level). Reject H0
prop.test(1400,2000) #P-value is low 2.2e-16 < 0.05 (significant level). Reject H0
prop.test(14000,20000) #P-value is low 2.2e-16 < 0.05 (significant level). Reject H0
prop.test(14,20, alt="two.sided")


#One tailed test
#H0 = the acceptance rate is not significantly greater than 50%
#H1 = the acceptance rate is significantly greater than 50%

prop.test(14,20, alt="greater", conf.level = .95) 
#sig. level 5%, we can reject H0 , the p-value is almost equal to 5%,So, we can say the acceptance rate is significantly greater than 50%

#To be more precise, lets run our test with Confidence-Interval 90%
prop.test(14,20, alt="greater", conf.level = .90) 
#sig. level 10%, we can reject H0 , the p-value is really small, and say the acceptance rate is significantly greater than 50%
#One tailed test
#H0 = the acceptance rate is equal or greater than 50%
#H1 = the acceptance rate is significantly less than 50%
prop.test(14,20, alternative = "less", conf.level = .95 ) 
#P-Value is high 0.94 > .05 (significant level) we can not say that the acceptance rate is equal or greater than 50%. #We can not reject H0
