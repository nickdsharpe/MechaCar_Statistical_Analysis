library(dplyr)
library(readr)
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
View(MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))


Suspension_Coil <- read_csv("Suspension_Coil.csv")
View(Suspension_Coil)library(readr)

total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups='keep')
View(total_summary)

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups='keep')
View(lot_summary)


t.test((Suspension_Coil$PSI),mu=mean(Suspension_Coil$PSI))

lot1 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == 'Lot1', ]
t.test((lot1$PSI),mu=mean(Suspension_Coil$PSI))

lot2 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == 'Lot2', ]
t.test((lot2$PSI),mu=mean(Suspension_Coil$PSI))

lot3 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == 'Lot3', ]
t.test((lot3$PSI),mu=mean(Suspension_Coil$PSI))
