##BOX PLOTS
#Charts for 1 variable --> Quantitative Variable
library("datasets")
data(iris)
head(iris)
# Box plot has 5 reading of number the numbers used to create the boxplot
summary(iris$Sepal.Length)
#Also get with function below
fivenum(iris$Sepal.Length)

boxplot(iris)
# the lower line means minimum
# the box represent 2nd and 3rd quartile with the dark line as median()
# and last upper line is the 4th quartile
# the circle above the top line are the outliers

boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Width,
        #horizontal = TRUE,
        col = colors()[10:15],
        #outpch = 16,  # Symbols for outliers; 16 = filled circle
        #outcol = "gray",  # Color for outliers
        #las = 1,  # Make all labels horizontal
        #ylim = c(0, 10),  # Specify range on Y axis
        #whisklty = 1,  # Whisker line type; 1 = solid line
        #notch = TRUE,  # Notches for CI for median
        #staplelty = 0,  # Staple (line at end) type; 0 = none
        #boxwex = 0.6,  # Width of box as proportion of original
        xlab = "iris sepal width",
        main = "iris data"
        )

iris$Species

#sepal width against species
boxplot(iris$Sepal.Width~iris$Species,
        col=colors(),
        main = "Sepal width vs Species",
        ylab = "Sepal width",
        xlab = "Species")
# Multiple boxplots
boxplot(iris,
        #horizontal = TRUE,
        col = colors()[10:15],
        outpch = 16,  # Symbols for outliers; 16 = filled circle
        outcol = "gray",  # Color for outliers
        las = 1,  # Make all labels horizontal
        ylim = c(0, 10),  # Specify range on Y axis
        whisklty = 1,  # Whisker line type; 1 = solid line
        notch = TRUE,  # Notches for CI for median
        staplelty = 0,  # Staple (line at end) type; 0 = none
        boxwex = 0.6,  # Width of box as proportion of original
        xlab = "Species",
        main = "iris data comparison"
)

detach("package:datasets", unload = TRUE)
rm(list = ls())