library('ggplot2')
dataframe <- read.csv("captcha.csv")

str(dataframe)

m1 <- lm(formula = dataframe$crec ~ dataframe$ctime + dataframe$itime)

#reg : crec = 19018 + 0.1153*itme + 0.0306*ctime  

summary(m1)

plot(dataframe$crec~dataframe$ctime,xlab="value c time",ylab="value c recognition")
abline(m2,col='pink')

g <- ggplot(data=dataframe,aes(x=ctime,y=crec))
g+geom_point(colour="grey60")+stat_smooth(method=lm,level=0.99)

g2 <- ggplot(data=dataframe,aes(x=itime,y=crec))
g2+geom_point(colour="grey60")+stat_smooth(method=lm,level=0.99,colour="Red")

g3 <- ggplot(data=dataframe,aes(x=itime,y=ctime))
g3+geom_point(colour="grey60")+stat_smooth(method=lm,level=0.99,colour="Orange")

####

fit <- lm(formula = dataframe$crec ~ dataframe$ctime + dataframe$itime)
summary(fit)

coef(fit)
intercept =coef(fit)
slope= coef(fit)
