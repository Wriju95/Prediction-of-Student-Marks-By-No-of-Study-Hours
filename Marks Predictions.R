marks<- read.csv(file.choose())
marks

plot(Scores ~ Hours, data=marks,pch=19)

linermodel<- lm(Scores ~ Hours, marks)
abline(linermodel,col="red")

summary(linermodel)
coef(linermodel)

new_marks<-data.frame(Hours= 9.25)
result<-predict(linermodel,new_marks)
print(result)
 