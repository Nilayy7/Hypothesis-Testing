View(Faltoons)
str(Faltoons)
summary(Faltoons)

###################Proportional T Test(Faltoons)##########

#h0 = Data is normal
#h1 = Data is not normal

attach(Faltoons)
table1 <- table(Weekdays,Weekend)
table1

prop.test(x=c(47,120),n=c(113,287),conf.level = 0.95,correct = FALSE,alternative = "two.sided")

#Two sided means checking for equal proportions
#p-value = 0.9681 > 0.05
#hence we accept the null hypothesis

#Unequal Proportions
prop.test(x=c(47,120),n=c(113,287),conf.level = 0.95,correct = FALSE,alternative = "less")

# p-value = 0.48 >0.05 so we accept null hypothesis 