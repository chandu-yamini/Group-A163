library(tidyverse)
library(dplyr)
P1 <- star$Absolute.magnitude.Mv.
P2 <- star$Star.type
t.test(P1,P2)