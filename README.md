# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and Ground clearlesce provided a non-random variance to the mpg values in the dataset. since they are highly significant their p-value very very less than 0.05.


* Is the slope of the linear model considered to be zero? Why or why not?

Slop is not zero because we have predictors that have non zero value for estimates of their independent variables, few are significant variable as well. 

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes this liner model predict mpg pretty adequately since the Adjust R-squared is 68% times of the veriation in data can be explained by this model.


## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


## T-Tests on Suspension Coils

* T-Test were conducted on the Subspension_coil.csv to determine if there is a Statistical difference on this dataset. Using the sample polution mean of 1500, below are the findings.

![one_sample_ttest](https://user-images.githubusercontent.com/91766890/159626245-fca05eef-b5c6-457c-a9d3-22c9e25bee6c.png)

We can observe from the results that the true mean is 1498.78 which was also on our summary statistics table for Deliverable 2. The t-test shows there is not enough evidence to reject the null hypothesis since the p-value for all manufacturing lots is 0.06028 higher than the common significance level of 0.05.

Lot 1

![one_sample_ttest_lot1](https://user-images.githubusercontent.com/91766890/159626510-81fe8002-bb16-428f-a76e-c6f6b25e3ddb.png)

Lot 2

![one_sample_ttest_lot2](https://user-images.githubusercontent.com/91766890/159626538-d63722f5-4123-40c9-9c9d-807fa5791fea.png)

Lot3 

![one_sample_ttest_lot3](https://user-images.githubusercontent.com/91766890/159626554-17bc342d-1a6d-4efc-a266-231c34e7073a.png)

For each individual lot, Lot 1 had a p-value of 1 and Lot 2 had a p-value of 0.60, both statistically similar which means we cannot reject the null hypothesis. For Lot 3, the sample mean is 1496.14 with a p-Value of 0.04, lower than the significance level of 0.05 which indicates that the sample mean and the presumed population mean are not statistically different.

## Study Design: MechaCar vs Competition

It would be interesting to conduct a study that collects data on MechaCar and comparable models from other manufacturers as a popular feature's that consumers heavily consider when thinking of purchasing a car is fuel efficiency & safety with latest functionality as it greatly impacts costs of ownership per year.

* Metrics Test : One metric to test could be the fuel efficiency & Vehicle safety compared to the competitors as many consumers wish their vehicle always take them further or with safety first, as  competitors are also switching to sustainable energy with electric cars high tech safety majors.

* Null/alternate Hypothesis : The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.

* Statistical Tests : Conducting a multiple linear regression to determine the metrics that have the most significant correlation and predictability with the best fuel efficiency and its impact on the vehicle price.

* Data required for Statitical Test: A random sample of n > 30 for MechaCar and their competitor, would need to be collected including the safety ratings, highway fuel efficiency, and horsepower plus running the data through RStudio.

Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.
