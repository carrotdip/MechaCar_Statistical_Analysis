# load dplyr package
install.packages('dplyr')
library('dplyr')
# read csv file
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table)
# determine p-value and r-squared value with summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table))
# p-value = 5.35e-11 // r-squared = 0.7149
# Pr(>|t|) is the probability that each coefficient contributes a random amount of variance to the linear model
# Pr(>|t|): vehicle_length = 5.08e-8, vehicle_weight = 0.0776, spoiler_angle = 0.3069, ground_clearance = 5.21e-8, AWD = 0.1852