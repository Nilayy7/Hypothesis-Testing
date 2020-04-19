#A hospital wants to determine whether there is any difference in the average Turn Around Time (TAT) of reports of the laboratories on their preferred list. 
#They collected a random sample and recorded TAT for reports of 4 laboratories. 
#TAT is defined as sample collected to report dispatch.
#Analyze the data and determine whether there is any difference in average TAT among the different laboratories at 5% significance level.
View(LabTAT)
summary(LabTAT)

#T test
t.test(LabTAT)


data <- stack(LabTAT)
attach(data)
View(data)

#Levene Test
library(car)
leveneTest(values~ind, data = data)

results <- aov(values~ind,data=data)
summary(results)
##P-Value is less than 0.05
# So we reject null hypo(h0) and accept alternate hypo (h1)

#Shapiro Test
shapiro.test(LabTAT$Laboratory.1)
shapiro.test(LabTAT$`Laboratory.2`)
shapiro.test(LabTAT$`Laboratory.3`)
shapiro.test(LabTAT$`Laboratory.4`)
summary(LabTAT)
