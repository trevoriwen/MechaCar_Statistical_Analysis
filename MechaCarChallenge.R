# Part 1
# Import MechaCar_mpg.csv as dataframe
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

# Perform linear regression
mpg_linear_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

# Get p-value and r-squared value with Summary()
summary(mpg_linear_regression)
# p-value = 5.35e-11
# r-squared value = 0.7149


# Part 2
# Import Suspension_Coil.csv
Suspension_Coil <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

# Get mean, median, variance, and standard deviation for PSI
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Get mean, median, variance, and standard deviation for PSI grouped by Manufacturing Lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


# Part 3
#t.test of whole sample data vs. the population mean of 1,500 PSI
t.test(Suspension_Coil$PSI,mu=1500)

#t.test of whole sample data vs. the population mean of 1,500 PSI
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot1"),mu=1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot2"),mu=1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot3"),mu=1500)
