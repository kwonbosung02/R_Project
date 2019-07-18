model <-lm(crec ~ itime + ctime,data = dataframe)
summary(model)
#ctime = 0.17763 * ctime + 0.21005 * itime + 1.66375
plot(model)

