library(PerformanceAnalytics)
library(corrplot)

dataframe <- read.csv("captcha.csv")

str(dataframe)

correlation1 <- dataframe[,1:3] 
#인터넷 사용시간과 캡챠 사용 빈도

#cor(correlation1$itime+correlation1$ctime*2, correlation1$crec)
cor(correlation1)


plot(correlation1)#산점도 
pairs(correlation1,panel=panel.smooth)#추세선 

chart.Correlation(correlation1,histogram= TRUE, pch = 15)

correlation1.cor <- cor(correlation1)

corrplot(correlation1.cor,method="number")

##########


#attach(dataframe)
m1 <- lm(dataframe$ctime ~ dataframe$itime)

plot(dataframe$ctime~dataframe$itime,xlab="value i time",ylab="value ctime")
abline(m1,col='blue')

m2 <- lm(dataframe$crec ~ dataframe$itime)

plot(dataframe$crec~dataframe$itime,xlab="value i time",ylab="value c recognition")
abline(m2,col='red')

m3 <- lm(dataframe&crec ~ dataframe$ctime)

plot(dataframe$crec~dataframe$ctime,xlab="value c time",ylab="value c recognition")
abline(m2,col='pink')




