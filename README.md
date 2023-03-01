# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Linear Regression](Images/MechaCar_LinRegress_Summary.png)
The three variables that provided a non-random amount of variance are:

- Vehicle Length
- Ground Clearance

The slope of this linear model would not be considered zero, as the corresponding *p-value* to the summarized F-statistic is very small indeed, which means at least one of these variables (in our case two variables) play a significant role in our 'mpg'.
Furthermore, the 'Adjusted R-squared' value being .68 would also mean that the correlation between these variables and their effect on 'mpg' of the Mecha Cars is fairly good.  
Overall, I would not be able to say that this particular linear model is a good predictor of the Mecha Cars' mpg, because certain predictors are weighing down the correlation. In this dataset, only two of the five predictors made any significant changes. This means that other variables are most likely more of a deciding factor, since Ground Clearance and Vehicle Length are most certainly not the only two reasons a vehicle get good or bad miles per gallon.  
  
---
## Summary Statistics on Suspension Coils
![Total Summary](Images/PSI_total_summary.png)
![Lot Summary](Images/PSI_lot_summary.png)
While the total variance does stay below the required 100 pounds per square inch manufacturing specification, Lot 3 definitely does not. Lots 1 & 2 meet the specifications admirably, Lot 3 has a huge amount of variance, as overall, would not meet specifications.  

---
## T-Tests on Suspension Coils
![Total TTest](Images/Total_PSI_OneSampleTTest.png)
![Lot1TTest](Images/Lot1_TTest.png)
![Lot2TTest](Images/Lot2_TTest.png)
The T-Test for the total showed that it did cross the .05 threshold, in this case meaning that the mean of all three lots combined was fairly close to the population mean of 1500 PSI.  
However, the T-Tests of both Lot 1 and Lot 2 were much better. Lot 1 had a mean of exactly 1500, which matched the population, and therefore had a *p-value* of 1. Lot 2 was next closest with a *p-value* of .607.
![Lot3TTest](Images/Lot3_TTest.png)
Lot 3 was the furthest from the population mean, and the only lot to fall below the .05 threshold. Mapping the values of Lot 3 with ```ggplot()``` and ```geom_density()``` show that PSI values in Lot 3 had the most equal distribution, but in doing so, was farthest from the population mean. If the goal was to achieve a mean of 1500 PSI, Lot 3 was the only lot to fail.  

---
## Study Design: MechaCar vs Competition
---

- **What metric or metrics are you going to test?**  
Compared to the competition, I would test mpg, safety rating, and cost of maintenance over time.  
These three metrics specifically come to mind because I feel like they're a major importance for modern consumers in 2023, but that could also be measured first prior to testing. Saving money, seeing a car purchase as a worthwhile and safe investment, and risk management (with both financial decisions and safety protocols) seem to be most important with economic instability and stagnant wages in today's economy.  
I would like to run more comprehensive tests to specifiy what factors correlate to *mpg* the most, and then track linear regression models with those factors more specifically than what was tracked in Deliverable 1. The parts and components that are shown to be less attributable to *mpg* could potentially be swapped out for higher quality components (to enforce product longevity while keeping good *mpg*) or lower quality components (to keep product price lower without effecting *mpg* or safety).
- **What is the null hypothesis or alternative hypothesis?**
**Alternate**:  
If the MechaCar models offer more advanced engineering combined with superior components at the same or lower price point than competitors' models, then MechaCars will provide a better value over time for customers.
**Null**:  
If the competitors' comparable models offer more value over time, then MechaCars models will not meet customers' expectations, and have a strong possibility of failing over time.
- **What data is needed to run the statistcal test?**  
For my specific requirements of cost-benefit-over-time, data would need to be collected under stress tests. It would be of utmost importance to find out the average miles that components wear out to the point of affecting performance and need replacing, and analyzing the cost of what the MechaCar models cost to maintain at 60k, 80k, 100k, and more, compared to competitors. If there are components that are wearing out too fast, or if there are certain factors effecting mpg over time, and if ANY factors alter the safety integrity of the vehicle, those issues would need to be addressed immediately in order to make the MechaCar the best value over its competitors.