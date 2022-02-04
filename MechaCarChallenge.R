#Deliverable 1
------------------------------------------------------------------------------
#Use the library() function to load the dplyr package.
library(dplyr)

#Import and read in the MechaCar_mpg.csv
Mechacar_mpg <- read.csv(file='MechaCar_mpg.csv')

#Perform linear regression on all six variables:
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= Mechacar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= Mechacar_mpg))
