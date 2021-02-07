##BOX PLOTS for groups
#Charts for variables --> Quantitative Variable -> Grouped boxplots
# Load data
require(datasets)
data(chickwts)
head(chickwts)
levels(chickwts$feed)

boxplot(chickwts$weight ~ chickwts$feed,
        col=colors()[17:22],
        names=c("casein","horsebean","linseed","meatmeal","soybean","sunflower"),
        #staplelty = 0,  # Staple (line at end) type; 0 = none
        #boxwex = 0.6,   # Width of box as proportion of original
        whisklty = 1,    # Whisker line type; 1 = solid line
        outpch = 16,     # Outlier symbol; 16 = filled circle
        outcol = "gray", # Color for outliers
        las = 1,  # Make all labels horizontal
        main = "Most effective feeds",
        xlab = "Feeds",
        ylab = "Weight",
        )
detach("package:datasets", unload = TRUE)
rm(list=ls())
