#Deliverable-1: Linear Regression to Predict MPG

library(tidyverse)
library(dplyr)

#Read File
MechaData <- read.csv(file='MechaCar_mpg.csv')
head(MechaData)

#Generate multiple linear regression model
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData)

#Generate summary statistics
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData))

#Deliverable-2: Visualizations for the Trip Analysis

#Read file

SuspTable <- read.csv(file='Suspension_Coil.csv')
head(SuspTable)

#Generate mean, median, variance, and standard deviation of PSI column
total_summary <- SuspTable %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Generate mean, median, variance, and standard deviation of PSI column for each manufacturing lot
lot_summary <- SuspTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .group='keep')

#Deliverable-3: T-Tests on Suspension Coils

#T-Test to determine if PSI across all manufacturing lots is different from population mean
t.test((SuspTable$PSI), mu=1500)

#T-Test to determine if PSI across manufacturing lot 1 is different from population mean
t.test(subset(SuspTable, subset=Manufacturing_Lot == "Lot1")$PSI, mu=1500)

#T-Test to determine if PSI across manufacturing lot 2 is different from population mean
t.test(subset(SuspTable, subset=Manufacturing_Lot == "Lot2")$PSI, mu=1500)

#T-Test to determine if PSI across manufacturing lot 3 is different from population mean
t.test(subset(SuspTable, subset=Manufacturing_Lot == "Lot3")$PSI, mu=1500)

