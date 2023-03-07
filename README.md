# MechaCar_Statistical_Analysis

## MechaCar_Statistical_Analysis
Text

## Linear Regression to Predict MPG (Deliverable 1)
![Counting Total Votes Code](Resources/images/election_total_vote.PNG)

The variables that provided a non-random amount of variance shown, in green, were vehicle_length and ground_clearance, as well as the intercept with a p-value significantly less than the confidence level of 0.05. 

The slope of the linear model should not be considered zero because our overall p-value highlighted in yellow is significantly less than our 0.05 confidence level.

Overall the linear model does have a strong confidence to predict the mpg of the MechaCar prototypes effectively, because the r-squared value is on the strong side of correlation being above 0.7 along with our p-value well below the confidence level of 0.05.


## Summary Statistics on Suspension Coils (Deliverable 2)
**Total Summary**
![Counting Total Votes Code](Resources/images/election_total_vote.PNG)
**Lot Summary**
![Counting Total Votes Code](Resources/images/election_total_vote.PNG)
Looking at the total_summary table we can see that all the lots in total are under the allotted 100 pounds per square inch, with a variance of 62.3 PSI. Once we look at the data grouped by lots in the lot_summary we can see that both Lot 1 and Lot 2 are well under the 100 PSI variance but, Lot 3 is currently not meeting the design specifications with a variance of 170.3.

## T-Tests on Suspension Coils (Deliverable 3)
**Total PSI t-test**
![Counting Total Votes Code](Resources/images/election_total_vote.PNG)
When looking at all manufacturing lots together as a whole we can see from that t-test our p-value is 0.06 and with a confidence level of 0.05, we do not have sufficient evidence to say the PSI from all manufacturing lots together is statistically different from the population mean of 1,500 PSI.

**Lot 1 PSI t-test**
![Counting Total Votes Code](Resources/images/election_total_vote.PNG)
**Lot 2 PSI t-test**
![Counting Total Votes Code](Resources/images/election_total_vote.PNG)
Both Lot 1 and Lot 2 had p-values significantly above the confidence level of 0.05 with p-values of 1 and 0.61 respectively. This means we do not have sufficient evidence to say Lot 1’s and Lot 2’s PSI are statistically different from the mean population of 1,500 PSI.

**Lot 3 PSI t-test**
![Counting Total Votes Code](Resources/images/election_total_vote.PNG)
The p-value for Lot 3’s t-test at 0.04 was below the confidence level of 0.05, therefore we have sufficient evidence to say Lot 3’s PSI is statistically different from the population mean of 1,500 PSI.


## Study Design: MechaCar vs Competition (Deliverable 4)
#### Summary:
I would run ANOVA tests on each category that is important to the consumer. These tests would be on pricing, mpg, maintenance costs, safety rating, etc. on MechaCar vs. the competition. I think there’s a few options for what the competition group is. If we use more than two cars with MechaCar at a time in the ANOVA test then we could be at risk of a Type 1 error, rejecting the null hypothesis, and say MechaCar is different from the other groups when actually one of the other groups was different and MechaCar fell into the average. This is shown as two options for µ2 below. 

#### Metrics to test:
Pricing, MPG, Maintenance Costs, Safety Rating, etc., any other metrics important to the customer

#### Hypothesis:
µ1 = MechaCars average in category
µ2 = either the vehicle that performs highly in this category OR an average of the competition
H0 : The means of both groups are equal, or µ1 = µ2.
Ha : The means of both groups are different.

#### Test:
Run ANOVA test on each metric comparing µ1 and µ2
Obtain p-value

#### Result:
If p-value is greater than or equal to 0.05 then fail to reject null hypothesis, meaning the MechaCar is statistically similar in that metric to its competition.
If p-value is less than 0.05 then reject null hypothesis, meaning the MechaCar is statistically different then the competition.

#### Data needed for test:
Need car data across a larger sample of MechaCars and multiple competitors in the same automotive market as MechaCar. This car data should consist of price, mpg, maintenance cost, safety rating, as well as any other important metrics. 

#### Other Possibilities:
It would be interesting to go 1 of 2 ways after looking at the results of the ANOVA testing. We could look to make a linear regression to show which metrics could predict overall consumer purchasing interest, and see how the metrics weigh into the customer’s interest. Then we could compare which metrics are most important to which metrics MechaCar did or did not outperform its competition. This would require consumer purchasing interest data as well as the data described in the ANOVA test.

The other option we could do is use linear regression to predict what elements (weight, braking, etc.) factor into each metric that MechaCar is low in the competition and see which element factors into each metric. For example if we saw MechaCar had significantly lower safety rating compared to the competition, we could go back and see what elements of the vehicle factor into that.

