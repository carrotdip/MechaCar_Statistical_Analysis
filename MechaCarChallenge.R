# Deliverable 1
# load dplyr package
install.packages('dplyr')
library('dplyr')
# install ggplot2
install.packages("ggplot2")
library("ggplot2")
# read csv file
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table)
# determine p-value and r-squared value with summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table))
# p-value = 5.35e-11 // r-squared = 0.7149
# Pr(>|t|) is the probability that each coefficient contributes a random amount of variance to the linear model
# Pr(>|t|): vehicle_length = 5.08e-8, vehicle_weight = 0.0776, spoiler_angle = 0.3069, ground_clearance = 5.21e-8, AWD = 0.1852

# Deliverable 2
# import csv file
suspension_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
# create total_summary dataframe
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# create lot_summary dataframe
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3
# determine if the PSI across all manufacturing lots is statistically different from population mean of 1500
t.test(x= suspension_table$PSI , mu=1500)
# determine if PSI for each manufacturing lot is statistically different from population mean of 1500
lot1 <- subset(suspension_table, Manufacturing_Lot == 'Lot1')
lot2 <- subset(suspension_table, Manufacturing_Lot == 'Lot2')
lot3 <- subset(suspension_table, Manufacturing_Lot == 'Lot3')
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)

# Deliverable 4
