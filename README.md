# MechaCar Statistical Analysis

### Overview

In this analysis the production problems with MechaCar are identified by performing multiple linear regression analysis on different variables in the dataset to predict the mpg of MechaCar prototyptes. Summary statistics on the PSI of suspension coils are collected and T-tests are run to determine if manufacturing lots are different from the mean population. A statistical study is also designed to compare vehicle performance of the MechaCar vehicles against vehciles from other manufacturers.

### Resources

- MechaCar MPG dataset
- Suspension Coil dataset

### Tools Used

  - R and RStudio
  - dplyr library

### Deliverable-1: Linear Regression to Predict MPG

  _Linear Regression Results_
  
  <img width="881" alt="MultipleLinearRegressionModel" src="https://user-images.githubusercontent.com/104603128/186759038-885123d6-1b14-4be4-b07e-56e544149290.png">


  _Statistical Summary_
  
  <img width="875" alt="Summary" src="https://user-images.githubusercontent.com/104603128/186759094-e2849c53-ecfc-4ff2-9530-8bd482278313.png">


  _Summary_
  
  - Vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model.
  - As the p-value is 5.35e-11, which is much smaller than the assumed significance level of 0.05%, we can reject our null hypothesis, indicating the slope of the linear model is not zero.
  - The R-squared value of the model is 0.714, which means that roughly 71% of the variability of MPG is explained using this linear model. Implying this model effectively predicts the mpg of MechaCar prototypes.


### Deliverable-2: Summary Statistics on Suspension Coils

  _Total summary for all manufacturing lots_

  <img width="411" alt="Total_Summary" src="https://user-images.githubusercontent.com/104603128/186769687-366f45d4-7da0-42b8-a331-e2b1150c9e0a.png">


  _Lot summary for each manufacturing lot_

  <img width="593" alt="Lot_Summary" src="https://user-images.githubusercontent.com/104603128/186769714-edb55761-e1e2-4d59-b46e-ff67d29adaa5.png">


  - In total for all manufacturing lots the variance is 62.29 which meets the design specification of variance not exceeding 100 PSI.
  - Lot wise - Lots 1 & 2 meet the design specifications of variance under 100 PSI but for Lot 3 the variance is 170.3, which is significantly higher than the limit of 100 PSI.
  

### Deliverable-3: T-Tests on Suspension Coils

  _T-Test comparing all manufacturing lots against mean PSI._
  
 <img width="617" alt="T-Test" src="https://user-images.githubusercontent.com/104603128/186769743-3807970e-9147-420a-b4eb-fff486369634.png">
  
  
  _T-Test for lot wise comparison against mean PSI._
  
  *_Lot-1_*
  
  <img width="643" alt="T-Test_Lot1" src="https://user-images.githubusercontent.com/104603128/186769756-1d0f5604-5fad-4ac6-97db-b11b89120f96.png">

  
  *_Lot-2_*
  
  <img width="638" alt="T-Test_Lot2" src="https://user-images.githubusercontent.com/104603128/186769769-38477de6-c395-4578-ada4-30dde3af5261.png">

  
  *_Lot-3_*
  
  <img width="691" alt="T-Test_Lot3" src="https://user-images.githubusercontent.com/104603128/186769788-a68f0841-79f3-4a05-b4cf-e7bb71b6d516.png">

    
  - For all lots our p-value is slightly above the significance level, therefore we cannot reject the null hypothesis, implying the two means are statistically similar.
  - For lot-1 only, p-value is higher than the significance level of 0.05, therefore the two means are statistically similar.
  - For lot-2 only, p-value is higher than the significance level of 0.05, therefore the two means are statistically similar.
  - For lot-3 only, p-value is lower than the significance level of 0.05, therefore the two means are not statistically similar indicating the PSI values in this lot vary significantly indicating possible manufacturing problems.
  
  
### Deliverable-4: Study Design: MechaCar vs Competition

#### Metrics to be tested:
  - Vehicle cost based on safety rating and maintenance cost of MechaCar and the Compettion

#### Hypothesis:

  - Null Hypothesis: The means of all groups are equal.
  - Alternate Hypothesis: At least one of the means is different from all other groups.

#### Type of test:

  A two way ANOVA test will be required to test the means of a signle dependent varaible (Cost) across two independent variables (safety rating & maintenance cost) within multiple groups.


#### Data Required:

  - Vehicle Cost sample data
  - Safety rating data
  - Maintenance cost data





