# MechaCar Statistical Analysis

## Overview
AutosRUs' new prototype, MechaCar, has been suffering from production issues. The purpose of this analysis was to review the production data to create insights on how to help the manufacturing team with production.

## Linear Regression to Predict MPG
Statistical Summary:
![D1](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/755705f8197e4ead8ce729101bac0b93b3a6bcf2/Deliverable%201%20-%20Summary%20LR.png)\
From the statistical summary shown above, it is apparent that **vehicle length** and **ground clearance**, based on their extremely low p-values, are likely to provide a non-random amount of variance to the miles per gallon, or mpg, values in the dataset.  This means that these two parameters have a significant impact on the mpg of the MechaCar prototype. Conversely, vehicle weight, spoiler angle, and All Wheel Drive have larger p-values, which indicates they do not have a significant impact on the mpg of the MechaCar.
The p-value for this model is 5.35E-11, which is much smaller than the assumed significance level of 0.05. This indicates that there is sufficient evidence to reject the null hypothesis which states there is no difference in the mpg of the MechaCar based on the provided specifications. Therefore, it is safe to state that there is a difference in the mpg of the MechaCar based on the criterion. This further indicates that the slope of the linear model is **not zero**. 
This model has an r-squared value of 0.7149, which indicates that approximately 71% of mpg prediction variance can be explained by the independent variables (vehicle length, weight, spoiler angle, ground clearance, and AWD) collectively. This indicates a linear model can predict the mpg of MechaCar prototypes effectively. 

## Summary Statistics on Suspension Coils
Total Summary:\
![D2](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/078dee3a1667880b43d1a5baac69d29a18339c1c/Deliverable%202%20-%20total_summary.png)\
Lot Summary:
![D2.1](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/078dee3a1667880b43d1a5baac69d29a18339c1c/Deliverable%202%20-%20lot_summary.png)\
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch, or PSI. The current manufacturing data for all manufacturing lots in total meets this design specification with a variance of 62.29356 PSI compared to 100. The individual lots, however, tell a different story. The variance of the Lots 1, 2, and 3 are 0.98, 7.47, and 170.29, respectively. This means that Lot 1 and 2 are well within the 100 PSI variance requirement. However, Lot 3 has a variance of 170.29, which not only does not meet the design specifications, but also disproportionately skews the data for the entirety of the manufacturing lots. 

## T-Tests on Suspension Coils
Summary Statistics on t-Test for all lots:
![D3](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/71e26a1dba29a7c1e60a6f5913bee1dbd8656ded/Deliverable%203%20-%20t-Test.png)\
With this summary, we can see that the true mean of the sample is 1498.78, and a p-value of 0.06. The p-value is greater that the significance level of 0.05, thus there is not sufficient evidence to reject the null hypothesis. This means that there is no significant difference between the means of these lots compared to the presumed population mean of 1500. 
![D3.1](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/858ece3fa12ccc65dbf0461573c94c63e0e4ede0/Deliverable%203%20-%20Lot%201%20t-Test.png)\
Looking at Lot 1 specifically, we can see that the true mean of this sample is 1500, which is the same as the presumed mean of the population. The p-value is 1, which indicates that we cannot reject the null hypothesis. 
![D3.2](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/8f22caf0c75ef12a376b07ea47115f77cde248f0/Deliverable%203%20-%20Lot%202%20t-Test.png)\
Lot 2 has similar summary statistics as Lot 1, which a true mean of 1500.2 and a p-value of 0.6. The analysis is the same, such that there is no statistically significant evidence to say there is a difference between lots 1 and 2 and the population. 
![D3.3](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/8f22caf0c75ef12a376b07ea47115f77cde248f0/Deliverable%203%20-%20Lot%203%20t-Test.png)\
Lot 3, on the other hand, has a true mean of 1496.14 and a p-value of 0.04. Because the p-value is lower that the common significance level of 0.05, we have sufficient evidence of reject the null hypothesis. This means that the mean of lot 3 is statistically different from the presumed population with a mean of 1500. 
It is apparent that there is something wrong with the production and manufacturing of Lot 3. Lot 3's production should be halted and checked for system failure. 

## Study Design: MechaCar vs. Competition
One of the most compelling features that incite potential buyers to purchase a car are the cost, safety rating, and fuel efficiency. Other appealing elements include horse power and maintenance cost. To quantify how the MechaCar performs against competition, I would design a study that utilizes all five of these metrics. The null hypothesis would be that there is no difference in **cost** based on the **safety rating, fuel efficiency, horse power**, and **maintenance cost**, and the alternative hypothesis would be there is a difference in **cost** based on the **safety rating, fuel efficiency, horse power**, and **maintenance cost**. In this statistical study, the **cost** would account for the dependent variable, and the remainder would account for the independent variables. 
I would first suggest using a multiple linear regression to determine how much variance in **cost** is accounted for by the combination of the **safety rating, fuel efficiency, horse power**, and **maintenance cost** for the MechaCar and its competition. I would then find the independent variable responsible for the most variance in the cost of the MechaCar that simultaneously causes little variation in the cost of competitor models to highlight in marketing and advertisements.
Then, similar to this study, I would then follow with a two-sample t-test to further determine if there is a statistical difference between the distribution means of the MechaCar vs. competitor models. I would use this to highlight which competitor models to promote comparison of with the MechaCar.
