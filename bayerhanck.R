#library(devtools)
#devtools::install_github("jens-klenke/bayerhanck")
#install.packages("readxl")

library(readxl)
library(bayerhanck)
dataset <- read_excel("Book2.xlsx")

# model1 LREP = f(LRGDP,LUNEM)
englegranger(LREP ~ LRGDP + LUNEM, data = dataset, lags = 2, trend = "const")
johansen(LREP ~ LRGDP + LUNEM, data = dataset, type = "eigen", lags = 2, trend = "const")
banerjee(LREP ~ LRGDP + LUNEM, data = dataset, lags = 2, trend = "const")
boswijk(LREP ~ LRGDP + LUNEM, data = dataset, lags = 2, trend = "const")
bh11 = bayerhanck(LREP ~ LRGDP + LUNEM, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.01)

summary(bh11)

bh12 = bayerhanck(LREP ~ LRGDP + LUNEM, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.05)

bh13 = bayerhanck(LREP ~ LRGDP + LUNEM, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.10)


# model2 LRGDP = f(LREP,LUNEM)
englegranger(LRGDP ~ LREP + LUNEM, data = dataset, lags = 2, trend = "const")
johansen(LRGDP ~ LREP + LUNEM, data = dataset, type = "eigen", lags = 2, trend = "const")
banerjee(LRGDP ~ LREP + LUNEM, data = dataset, lags = 2, trend = "const")
boswijk(LRGDP ~ LREP + LUNEM, data = dataset, lags = 2, trend = "const")
bh21 = bayerhanck(LRGDP ~ LREP + LUNEM, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.01)
summary(bh21)
bh22 = bayerhanck(LRGDP ~ LREP + LUNEM, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.05)
bh23 = bayerhanck(LRGDP ~ LREP + LUNEM, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.10)


# model3 LUNEM = f(LRGDP,LREP)
englegranger(LUNEM ~ LRGDP + LREP, data = dataset, lags = 2, trend = "const")
johansen(LUNEM ~ LRGDP + LREP, data = dataset, type = "eigen", lags = 2, trend = "const")
banerjee(LUNEM ~ LRGDP + LREP, data = dataset, lags = 2, trend = "const")
boswijk(LUNEM ~ LRGDP + LREP, data = dataset, lags = 2, trend = "const")
bh31 = bayerhanck(LUNEM ~ LRGDP + LREP, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.01)
summary(bh31)
bh32 = bayerhanck(LUNEM ~ LRGDP + LREP, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.05)
bh33 = bayerhanck(LUNEM ~ LRGDP + LREP, data = dataset, lags = 2, trend = "const", test = "all", crit = 0.10)



