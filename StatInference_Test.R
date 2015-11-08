set.seed(333)
library(ggplot2)

means <- function(n){
    expMeans <- 0
    for(i in 1:n){
        expMeans[i] <- mean(rexp(40, 0.2))
    }
    return(expMeans)
}

df <- data.frame("ExpMeans" = means(1000))

p1 <- ggplot(data=df, aes(x=ExpMeans)) +
        geom_histogram(aes(y=..density..), color="black", fill="white") +
        geom_density(fill="red", alpha=0.2)

print(p1)
