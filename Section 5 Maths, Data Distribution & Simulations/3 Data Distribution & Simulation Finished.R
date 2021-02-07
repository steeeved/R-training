##Data Distribution & Simulation

#Functions for Statistical Distributions

# . d for the density or probability mass function (pmf)
# . p for the cumulative probability distribution function (cdf)
# . q for quantiles
# . r for random number generation 

#For Continous
x<- seq(-8,8,0.1)
x
plot(dnorm(x),type = "l")
plot(dnorm(x,mean = 0,sd=1),type = "l")
curve(dnorm(x), from = -9,to = 9)

#For Discrete
x <- 0:60
plot(dbinom(x,size = 50, prob = .44),type="l")
plot(dbinom(x,size = 50, prob = .44),type="h") #pin diagram, here for the binomial distribution


#Drawing Density curves
curve(dnorm(x),from = -3,to=3, type = "h")
curve(dnorm(x, mean = 2),from = -3,to=3, type = "h")
curve(dnorm(x, sd = 2),from = -2.5,to=2.5, type = "h")


## Adjusting the above to see the majority of the curve
curve(dnorm(x, sd = 2),from = -2.8,to=2.8, type = "h")
curve(dnorm(x, sd = 2),from = -3,to=3, type = "h")
curve(dnorm(x, sd = 2),from = -3.5,to=3.5, type = "h")
curve(dnorm(x, sd = 2),from = -4.5,to=4.5, type = "h")
curve(dnorm(x, sd = 2),from = -5,to=5, type = "h")
curve(dnorm(x, sd = 2),from = -6,to=6, type = "h")


#Cumulative
## Computing Normal Probabilities
pnorm(0)# P(X < 0)
pnorm(1.960)# P(X < 1.960)
pnorm(-1.960)# P(X < -1.960)

## X is standard Normal (mean = 0, sd = 1)
1 - pnorm(0) # P(X > 0) as the lowest would be 0
1 -pnorm(1.960)# P(X > 1.960)

# P(left hand range < X < right hand range)
#Giving z scores value e.g 2.576 and its returning confidence interval
pnorm(2.576) - pnorm(-2.576) #99%
pnorm(2.326) - pnorm(-2.326) #97%
pnorm(1.960) - pnorm(-1.960) #95%
pnorm(1.645) - pnorm(-1.645) #90%
pnorm(1.282) - pnorm(-1.282) #80%
pnorm(1) - pnorm(-1)         #68%
pnorm(0.674) - pnorm(-0.674) #50%

# The healthy individuals muscle mass is well described by a normal distribution
# with a mean of 138 and a standard deviation of 15. Then, if a person has a
# muscle mass 165, there is
a <- 1 - pnorm(165, mean = 138, sd = 15)
a*100
#Only 3.5% of the general population, that has that value or higher.

#Quantiles
#what is the IQ score one would need to have to be in the 95th percentile if the s.d is 20.

# we want to find the IQ score such that the cumulative probability at that score is 0.95. 
# These sorts of questions ask about the inverse cumulative distribution function,
# or the quantile function.
qnorm(0.95,100,20)
#The q(quantile) and p(cumulative probability) functions are inverses of each other
pnorm(132.8971,100,20)
#pnorm(110,100,20)
pnorm(qnorm(0.95,100,20),100,20)
#Random
rnorm(10)
rnorm(10,mean = 7,sd=5)
rbinom(10,size = 20,prob = 0.5)
