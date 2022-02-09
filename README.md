# MechaCar_Statistical_Analysis

In this challenge, I helped Jeremy and the data analytics team to do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

This assignment consists of three technical analysis deliverables and a proposal for further statistical study :

# Deliverable 1:

## Linear Regression to Predict MPG :
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.Following is the ouput to design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file:

![image](https://user-images.githubusercontent.com/92283185/152617167-9bab8a41-afbe-4489-a51a-2a28eeaebb34.png)

From the above output following are the questions which needs to be addresses :

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
  - The following variables provided a non-random amount of variance to the MPG values in the MechaCar_mpg dataset:

      - Intercept
      - vehicle_length
      - ground clearance

These variables will always have a given value that does not change.


![image](https://user-images.githubusercontent.com/92283185/153236978-d27de088-bda5-4800-87f6-d42e8b084731.png)


- Is the slope of the linear model considered to be zero? Why or why not?
  
  - The p-value of this multiple linear regression analysis is 5.35 x 10(-11), which is much smaller than the assumed significance level of 0.05%; therefore, there is sufficient evidence to reject the null hypothesis since the slope of the linear model is not zero.

![image](https://user-images.githubusercontent.com/92283185/153237705-a1f96e78-d43b-4cc5-9b32-74292d644aaf.png)


- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  
  - This linear model predicts that roughly 71% of MPG predictions of MechaCar prototypes will be correct when using this model. This multiple linear regression model has an R-value of 0.71 as highlighted in the above snip, which suggests there is a strong positive correlation between MPG and the variables of vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD.


# Deliverable 2:

## Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Following is the output of summary statistics table to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots:-
  - **Figure 1 :**
  
![image](https://user-images.githubusercontent.com/92283185/152617478-3732a1fd-0cd7-4492-b9af-c38d346ce4f7.png)



- The following PSI metrics for each lot: mean, median, variance, and standard deviation:-
  - **Figure 2 :**
  
![image](https://user-images.githubusercontent.com/92283185/152617531-cd029f54-c6f0-4375-b899-95a0cc3fc86b.png)

For the above output we need to know :

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  - **The variance of the suspension coils did meet this design specification for all manufacturing lots in total**. As shown above in Figure 1 the variance of the suspension coils for all three lots was 62.29 which is not exceeding 100 pounds per square inch.
  - While **The variance of the suspension coils for all three lots individually _partially_ meet this design specification**. As shown above in Figure 2 the variance in Lots 1 and 2 are below 100 PSI, so suspension coils in Lots 1 and 2 are within MechaCar design specifications, whereas The variance for suspension coils in Lot 3 was 170.28, which exceeds MechaCar design specifications.

# Deliverable 3

## T-Tests on Suspension Coils

- For all t-tests conducted, the significance level was 0.05 percent. The t-test compared the means of the Suspension Coil dataset, which was 1498.78, against a mean of 1500. All t-tests conducted resulted in the means being statistically similar.

  - A t-test across all suspension coil manufacturing lots gave a p-value of 0.06 Since this is above the significance level, the two means are statistically similar.

![image](https://user-images.githubusercontent.com/92283185/153241927-a75f6bc4-779d-4408-8ad0-2a76c14d0daa.png)

  - A t-test for Lot 1 gave a p-value of 1, which is above the significance level. The two means are statistically similar.

![image](https://user-images.githubusercontent.com/92283185/153242179-331f815b-2eec-44f8-ad20-8e40749076d1.png)

  - The p-value for the Lot 2 t-test was 0.6072. This is above the significance level of 0.05 results in the two means being statistically similar.
![image](https://user-images.githubusercontent.com/92283185/153242406-eb7ad4a1-f654-44d0-af7e-e1e53b6e5a29.png)

  - The calculated p-value from the Lot 3 t-test was 0.4168. This is above the 0.05 significance level and results in the means being statistically similar.

![image](https://user-images.githubusercontent.com/92283185/153242587-9ef059a5-70a7-4f29-aa26-c02a8c183cb6.png)


# Deliverable 4

## Study Design: MechaCar vs Competition

- Description of Statistical Study
  - The cost of owning and maintaining a vehicle can be expensive, so AutosRUs wants to make sure their customers are getting the best value over their competitors and would like to measure the rate of depreciation for MechaCars against other manufacturers.

- Metric
  - Rate of depreciation (value of vehicle over time)
- Hypothesis
  - To compare MachaCar against competition I would set up the following hypotheses:

    - Null Hypothesis(Ho): The means of exhaust system emissions of all groups are equal.

    - Alternative Hypothesis (Ha): At least one of the means of exhaust system emissions is different from all other groups.
    
- Statistical test
  - Data analysts will use multiple linear regression to predict MechaCar's rate of depreciation

- Data needed
  - In order to perform multiple linear regression to predict rate of depreciation, analysts will need vehicle values, age, and mileage.
