#TeleCall uses 4 centers around the globe to process customer order forms. They audit a certain %  of the customer order forms. 
#Any error in order form renders it defective and has to be reworked before processing. 
#The manager wants to check whether the defective %  varies by centre. 
#Please analyze the data at 5% significance level and help the manager draw appropriate inferences

#Load the Data
View(`Costomer+OrderForm`)
attach(`Costomer+OrderForm`)
str(`Costomer+OrderForm`)

#Create Dummy Variable for the categorical data
library(caret)

dumm <- dummyVars("~.",data = `Costomer+OrderForm`,fullRank = T)

cof <- data.frame(predict(dumm, newdata = `Costomer+OrderForm`))
str(cof)
View(cof)

######Chi Square Test
chisq.test(cof)
#P Value is 1 which is greater than 0.05 , so we accept null hypothesis

#####T-Test
t.test(cof)
#mean of x 0.9058333
#95 percent confidence interval:
#0.8892852 0.9223815
#alternative hypothesis: true mean is not equal to 0