library(tidyverse)
star <- read.csv("6 class csv.csv")
pdf("visualization.pdf")

boxplot( Absolute.magnitude.Mv. ~ Star.type , star ,
         main = "Comparision of Absolute magnitude and Different type of Stars ",
         ylab = "Absolute magnitude", 
         xlab = "Different type of Stars",
         col = c("red","yellow","pink","lightblue","green","blue"),
         names = c("Red Dwarf",
                   "Brown Dwarf",
                   "White Dwarf",
                   "Main Sequence",
                   "SuperGiants",
                   "HyperGiants"),
         las = 3,
         cex.axis = 0.6)


y <- star$Absolute.magnitude.Mv.
h <- hist(y,xlab="Absolute Magnitude Variations",main = "Histogram of Absolute Magnitude Frequency")
xfit <- seq(min(y),max(y),length.out = 1000)
yfit <- dnorm(xfit,mean=mean(y),sd=sd(y))
yfit <- yfit * diff(h$mids[1:2]) * length(y)
lines(xfit, yfit, col = "blue", lwd=2)
dev.off()


