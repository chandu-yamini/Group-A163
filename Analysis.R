library(tidyverse)
library(dplyr)
star <- read.csv("6 class csv.csv")
P1 <- star$Absolute.magnitude.Mv.
P2 <- star$Star.type
t.test(P1,P2)