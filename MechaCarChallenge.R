library(dplyr)
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCar_LinReg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
     ground_clearance + AWD, data=MechaCar_df)
summary(MechaCar_LinReg)
ggplot(MechaCar_df, aes(mpg, vehicle_length + vehicle_weight + spoiler_angle +
             ground_clearance + AWD)) + 
  geom_point() + geom_smooth(method = 'lm')
# MechaCar_LinReg$coefficients[1]
# sum(summary(MechaCar_LinReg$coefficients)) - -103.964
# adjustedLinReg <- lm(mpg ~ vehicle_length + ground_clearance, data = MechaCar_df)
# summary(adjustedLinReg)
# summary(lm(mpg ~ spoiler_angle, data = MechaCar_df))
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                                   Variance=var(PSI), SD=sd(PSI))
View(total_summary)
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI),
              Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
View(lot_summary)
library(tidyverse)
PSI_plt <- ggplot(Suspension_Coil, aes(x=PSI))
PSI_plt + geom_density()
t.test(Suspension_Coil$PSI, mu=1500)
lot_1_subset <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1", PSI)
lot_2_subset <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2", PSI)
lot_3_subset <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3", PSI)
lot1_ttest <- t.test(lot_1_subset, mu=1500)
lot2_ttest <- t.test(lot_2_subset, mu=1500)
lot3_ttest <- t.test(lot_3_subset, mu=1500)
View(lot1_ttest)
View(lot2_ttest)
View(lot3_ttest)
View(sample_PSI_ttest)
#Alternate t-tests...
#-----------
ggplot(lot_2_subset, aes(x=PSI)) + geom_density()
t.test(lot_1_subset, mu=1500)
t.test(lot_1_subset, mu=mean(Suspension_Coil$PSI))
t.test(lot_2_subset, mu=1500)
t.test(lot_2_subset, mu=mean(Suspension_Coil$PSI))
t.test(lot_3_subset, mu=1500)
t.test(lot_3_subset, mu=mean(Suspension_Coil$PSI))

