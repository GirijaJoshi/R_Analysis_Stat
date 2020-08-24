# read csv file
mecha_car <- read.csv('MechaCar_mpg.csv')

# simple linear regression. check weight vs mpg
# H0 : The slope of the linear model is zero, or m = 0
# Ha : The slope of the linear model is not zero, or m ??? 0

# multiple linear regression
head(mecha_car)
# vehicle.length, vehicle.weight, spoiler.angle, ground.clearance, AWD, mpg
# generate multiple linear regression model
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance , data = mecha_car)
# generate summary
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mecha_car))

#-----------------------------------------------------------
# Suspension Coil Summary
suspension_coil = read.csv('Suspension_Coil.csv')
print(suspension_coil)
summarize_coil = suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI))
print(summarize_coil)
