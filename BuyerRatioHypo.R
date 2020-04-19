#Buyer's Ratio
#Load The Data
View(BuyerRatio)

buy <- BuyerRatio[,-1]
View(buy)

#Chi-Square Test
chisq.test(buy)
#P- Value = 0.6603

mean(BuyerRatio[,2])
#mean = 242.5

mean(BuyerRatio[,3])
#mean = 832.5

##T-Test
t.test(BuyerRatio[,-1],alternative = "two.sided",conf.level = 0.95,correct = TRUE,Data=buyr)
#alternative hypothesis: true mean is not equal to 0
#p-value = 0.03285 > 0.05 Reject The Null Hypothesis

#Here we cannot check shapiro Normality test,because the sample size must be between 3 to 5000

