dataframe <- read.csv("captcha.csv")

str(dataframe)

attach(dataframe)

lm(itime~cread)