
library('ggplot2')
dataframe <- read.csv("captcha.csv")

str(dataframe)

m1 <- lm(formula = dataframe$crec ~ dataframe$ctime * dataframe$itime)

#reg : crec = 19018 + 0.1153*itme + 0.0306*ctime  

summary(m1)
print("------------------------------")
fit1 <- lm(crec~itime*ctime,data=dataframe)
summary(fit1)


p <- ggplot(data=dataframe,aes(x=itime + ctime ,y=crec,colour=ctime)) + geom_point() + geom_smooth(method="lm")


p<-p+geom_abline(intercept=fit1$coef[1],slope=fit1$coef[2],colour="orange",linetype=2)
p<-p+geom_abline(intercept=fit1$coef[1]+fit1$coef[3],slope=fit1$coef[2]+fit1$coef[4],
                 colour="green",linetype=2)

p

model <-lm(crec ~ itime + ctime,data = dataframe)
summary(model)
#ctime = 0.17763 * ctime + 0.21005 * itime + 1.66375
plot(model)

