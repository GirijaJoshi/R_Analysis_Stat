# Module 15 Challenge

This module we have learned how to use R language to do statistical analysis. We got exposed to different R functions and how to use. This challenge is to use what we have learned in this chapter and apply to answer the questions.

### MPG Regression
Using provided dataset and multiple linear regression that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset. Using multiple linear regression and summary as below we can predict mpg of MechaCar dataset.
```
mecha_car <- read.csv('MechaCar_mpg.csv')
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance , data = mecha_car)
# generate summary
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mecha_car))
```

### Suspension Coil Summary
This portion of the challenge uses group_by and summarize function of R to suspension coil summary to get Mean, Median, Variance and Standard Deviation
```
suspension_coil = read.csv('Suspension_Coil.csv')
print(suspension_coil)
summarize_coil = suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI))
```

### Suspension Coil T-Test
Using t.test() we can findout suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch. To achive this goal we have used R's t.test() as below
```
t.test(suspension_coil$PSI, mu=1500)
```

### Design Your Own Study
Here we have to design our own study to compare the performace of MechaCar prototype is better that its competitors. Here I have used Fuel efficiance as deciding criteria. Design and hypothesis is defined in MechaCarWriteUp.txt file.

### related link
* RScript: [RScript MechaCarChallenge.R](MechaCarChallenge.R)
* WriteUp: [MechaCarWriteUp.txt](MechaCarWriteUp.txt)
