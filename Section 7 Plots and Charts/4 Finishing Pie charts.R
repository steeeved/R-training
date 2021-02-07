###Continuing Pie Charts


par(mfrow=c(1,1),cex.main=2)
x <- c(19,27,20,10,24)
labels <- c("London","Bejing","New York","Singapore","Mumbai")
pie(x,labels,main = "Polution by Cities", col = heat.colors(5),
    init.angle=90,
    clockwise = TRUE)


par(mfrow=c(1,3),cex.main=1)
x <- c(19,27,20,10,24)
labels <- c("London","Bejing","New York","Singapore","Mumbai")
# Plot the chart with title and color pallet.
pie(x,labels,main = "Polution by Cities", col = heat.colors(5),
    init.angle=90,
    clockwise = TRUE)

y <- c(20,26,24,6,24)
labels <- c("London","Bejing","New York","Singapore","Mumbai")
pie(y,labels,main = "Growth in Economies", col = colors()[5:10],
    init.angle=90,
    clockwise = TRUE)

z <- c(15,23,25,9,28)
labels <- c("London","Bejing","New York","Singapore","Mumbai")
pie(z,labels,main = "Population increase", col = colors()[10:15],
    init.angle=90,
    clockwise = TRUE) # Default is FALSE

par(mfrow=c(2,3),cex.main=1)
barplot(x,names.arg = labels)
barplot(y,names.arg = labels)
barplot(z,names.arg = labels)

barplot(x,names.arg = labels)
barplot(y,names.arg = labels)
barplot(z,names.arg = labels)
#Conclusion: Pie chart are attractive but no recommended because its difficult for human eye 
#to feel the difference by see slice as compared to bars. So use barplot instead

rm(list = ls())
