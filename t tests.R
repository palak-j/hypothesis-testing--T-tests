
# T test for single sample

# Example 1
score <- c(78,120,89,92,135,86,99,108,111,97,140,89,86,102,111)
mean_score <- mean(score)
std_score <- sd(score)


t.test(score,conf.int=.95, mu=230)
# p value is 1.64e-13 which is very less than 0.05 , therefore we can 
# reject null hypothesis and can say that there is a signifcant difference 
# in sample and population mean.

#We can see confidence interval is (92.8244 , 112.90888)


#Cohen's d
delta <- abs(mean_score-230)/std_score
delta
#As cohen's d is 7.01 which is greater than 0.8 . Therefore, it is large effect.


# T test for correlated samples

#Example 2
scores_before_activity <- c(72,64,57,65,77,68,78,81,73,60)
scores_after_activity <- c(79,71,60,68,71,66,78,84,76,63)
data1 = data.frame(scores_before_activity, scores_after_activity)

data1

t.test(data1$scores_after_activity, data1$scores_before_activity, 
       paired =TRUE, conf.level = 0.95)  
# As p value is 0.1252which is greater than 0.05, we can not reject 
# null hypothesis.




#T test for independent samples

# Example 3

scores <- c(67, 58, 72, 69,73,69,75,71,84)
group <- c(1,1,1,1,2,2,2,2,2)

data2 = data.frame(group, scores)
data2


t.test(scores~ group, data =data2, var.equal=TRUE)

# As we can see from results, p value = 0.0864 which is greater than 0.05
# Therefore, we can not reject null hypothesis and we will say classes 
# doesnot affect the scores.














































