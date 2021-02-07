##Math Functions Lecture

# R includes an extensive set of built-in math functions. Here is a partial list:
?exp()
# exp(): Exponential function, base e
# log(): Natural logarithm
# log10(): Logarithm base 10
# sqrt(): Square root
# abs(): Absolute value
# sin(), cos(), and so on: Trig functions
# min() and max(): Minimum value and maximum value within a vector
# which.min() and which.max(): Index of the minimal element and maximal
# element of a vector
# pmin() and pmax(): Element-wise minima and maxima of several vectors

y <- matrix(c(2,4,6,8,10,1),nrow = 3,ncol = 2) # matrix
y
min(y)
min(y[2,],y[1,])
pmin(y[2,],y[3,]) #pair wise min
pmin(y[,1],y[,2])
# sum() and prod(): Sum and product of the elements of a vector
# cumsum() and cumprod(): Cumulative sum and product of the elements of a

x<- c(2,3,4) # vector
cumsum(x) #cummulative sum
cumprod(x)
cummin(x)
cummax(x)
#round(), floor(), and ceiling(): Round to the closest integer, to the closest
# integer below, and to the closest integer above
# factorial(): Factorial function
