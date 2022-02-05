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

# Deliverable 2
-------------------------------------------------------------------------------

#import and read in the Suspension_Coil.csv file
Suspension_coil <- read.csv(file='Suspension_Coil.csv')

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
