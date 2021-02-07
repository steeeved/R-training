## Pie Chart
#Charts for 1 variable --> Categorical variable

?runif
runif(5)
pie(runif(5), col = rainbow(5),radius = 1)

library("datasets")
data("Orange")
head(Orange)
levels(Orange$Tree)

pie(table(Orange$age),col = colors()[10:15])


# same pie chart with labeled segments
pie(table(Orange$age),
    labels = c("Neem","Arjan","Gummi","Sukh Chain","Rain Tree","Raisen","Boops"),
    col = colors()[15:20])
?par
par(oma=c(1,1,1,1)) # Setting outside margins: bottom, left, top, right
pie(table(Orange$age),
    labels = c("Neem","Arjan","Gummi","Sukh Chain","Rain Tree","Raisen","Boops"),
    col = colors()[15:20])

par(mar=c(2,1,1,2))  # Setting plot margins
pie(table(Orange$age),
    labels = c("Neem","Arjan","Gummi","Sukh Chain","Rain Tree","Raisen","Boops"),
    col = colors()[15:20])

?par
par(mfrow=c(1,2),cex.main=1)  #cex for larging the title 1/2X/3 and mfrow to divide the graphical device in rows and columns

pie(table(Orange$age),
    labels = c("Neem","Arjan","Gummi","Sukh Chain","Rain Tree","Raisen","Boops"),
    col = colors()[15:20],main =" Tree Slices")

detach("package:datasets", unload = TRUE)
rm(list = ls())