#Two qualitative variables
#chi-square test for independence
#chi-square test for independence compares two variables in a contingency table 
#to see if they are related. 


#P-value: probability of Null Hypothesis true or false
##statisticaly signinficant : Resultant P-value < 5% level --> reject H0

#if p value is lower than 5% 0.05 then H1 is true
#(there is a difference, but not sure in a +ve direction or -ve one)

#But if p-value is high we can not say means doest match

#### Q1 
#Two drugs are administered to patients to treat the same disease.
#Are the drugs equally effective?

treat <- matrix(c(42,15,14,18),2,2)
treat
colnames(treat) <- c("cured", "Not cured")
rownames(treat) <- c("Drug Alpha", "Drug Beta")
treat
#Test if there is a difference between Drug Alpha and Drug Beta effectiveness 

#H0: There is No difference between Drug Alpha and Drug Beta effectiveness 
#H1: There is a difference between Drug Alpha and Drug Beta effectiveness 

chisq.test(treat) #As the P-value is low, Reject H0. Hence, there is a difference between Drug Alpha and Drug Beta effectiveness 

Coof <- chisq.test(treat)
Coof$observed
Coof$expected
Coof$residuals

##Q2 Ban

#250 adults were asked whether government should ban fast food chain to discredit junk food consumption.
#The following results were obtained?
#   In favour Against No opinion
# Men 70 66 15
# Women 63 28 8
# Do men and women have the same distribution of opinions?

ban <- matrix(c(70,63,66,28,15,8),2,3)
colnames(ban) <- c("In favour", "Against", "No opinion")
rownames(ban) <- c("Men","Women")
ban

#H0: Men and women have the same distribution of opinions
#H1: Men and women Doest not have the same distribution of opinions

## Test if there is a difference between the men and women distributions

chisq.test(ban) #P-value is low, So Reject H0. Hence, Men and women Doest not have the same distribution of opinions










