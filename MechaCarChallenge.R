
# ****************Deliverable 1****************
options(scipen = 999)
# Load dplyr Package 
library(dplyr)

#Read mechacar csv as data frame
MechaCar_df <- read.csv('resources/MechaCar_mpg.csv')

# Liner regression using lm() function including all columns

Mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_df)

# Use of summary function to determine r-squard and p-value
summary(Mechacar_lm)

# ****************Deliverable 2*****************

#Read Suspension_Coil.csv in a data frame
Suspension_df <- read.csv('resources/Suspension_Coil.csv')

#Cacluate mean median variance and standard deviation as total summary
total_summary <- Suspension_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Veriance=var(PSI), SD=sd(PSI))
view(total_summary)
#Calculate mean media variance and standard deviation grouped by lot

lot_summary <- Suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Veriance=var(PSI), SD=sd(PSI))
view(lot_summary)
# ****************Deliverable 3*****************

# t test for all manufacturing 
t.test(Suspension_df$PSI, mu=1500)
# t test for individual manufacturing lot = 1
t.test(subset(Suspension_df,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# t test for individual manufacturing lot = 2
t.test(subset(Suspension_df,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# t test for individual manufacturing lot = 3
t.test(subset(Suspension_df,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

