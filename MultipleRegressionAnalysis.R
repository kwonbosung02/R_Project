dataframe <- read.csv("captcha.csv")

str(dataframe)

m1 <- lm(formula = dataframe$crec ~ dataframe$ctime + dataframe$itime)

#reg : crec = 19018 + 0.1153*itme + 0.0306*ctime  

summary(m1)