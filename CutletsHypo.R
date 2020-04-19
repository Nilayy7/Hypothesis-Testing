##Hpothesis Testing 
#A F&B manager wants to determine whether there is any significant difference in the diameter of the cutlet between two units.
#A randomly selected sample of cutlets was collected from both units and measured? 
#Analyze the data and draw inferences at 5% significance level. 
#Please state the assumptions and tests that you carried out to check validity of the assumptions.

attach(Cutlets)
str(Cutlets)

summary(Cutlets)

#Hypothesis
t.test(Cutlets)

#Null Hypothesis (H0) = True Mean is Equal to 0
#Alternative Hypothesis (H1 = True Mean is not equal to 0)

#t-test
t.test(Cutlets$Unit.A, mu = 0,alternative = "two.sided")
t.test(Cutlets$Unit.B, mu = 0,alternative = "two.sided")

#Chi square test
chisq.test(Cutlets)

#Fishers exact test
fisher.test(Cutlets)

boxplot(Cutlets)
plot(Cutlets)

