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
Total Summary\
![D2](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/078dee3a1667880b43d1a5baac69d29a18339c1c/Deliverable%202%20-%20total_summary.png)\
Lot Summary
![D2.1](https://github.com/carrotdip/MechaCar_Statistical_Analysis/blob/078dee3a1667880b43d1a5baac69d29a18339c1c/Deliverable%202%20-%20lot_summary.png)\
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch, or PSI. The current manufacturing data for all manufacturing lots in total meets this design specification with a variance of 62.29356 PSI compared to 100. The individual lots, however, tell a different story. The variance of the Lots 1, 2, and 3 are 0.98, 7.47, and 170.29, respectively. This means that Lot 1 and 2 are well within the 100 PSI variance requirement. However, Lot 3 has a variance of 170.29, which not only does not meet the design specifications, but also disproportionately skews the data for the entirety of the manufacturing lots. 

## T-Tests on Suspension Coils
