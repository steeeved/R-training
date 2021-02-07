#Multiple plots in one figure | Multiple Columns
?matplot
matrix_1 <- matrix(rnorm(12), nrow=4, ncol=3)
matrix_2 <- matrix(sample(-1:1, size = 12, replace = TRUE), nrow=4, ncol=3)
matrix_1
matrix_2
matplot(matrix_1,matrix_2)

matplot(matrix_1,matrix_2, type = "o")

matplot(matrix_1,matrix_2, type = "ls") #types : p, o, b, h, s,

matplot(matrix_1,matrix_2, type = "ls",lty = c(5,6),lwd = c(3,10))

library("datasets")
data("iris")
head(iris)

matplot(iris[,1:4],
        type="p",
        pch = 1:4,
        col = 1:4,
        main = "iris data",
        xlab="Index",
        ylab = "values")
        
legend('topleft',c("Setosa Patals","Setosa Sepals",
                           "Versicolor petals","Versicolor Sepals"),
       pch = 1:4,
       col = 1:4)

par(mfrow=c(2,2))
plot(iris[,1:2]); plot(iris[,2:3])
plot(iris[,3:4]); plot(iris[,4:1])
par(mfrow=c(1,1))
plot(iris)
