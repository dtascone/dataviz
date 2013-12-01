library (ggplot2)

#file to use
fp <- "/Users/danielletascone/dataviz/"

#calls file for use
setwd(fp)

nychom$incident_date

month <- substring(nychom$incident_date, 1, 2)
head(month)


month <- month[!(month == "")]
head(month)


qplot(month, main="Incidents by Month", xlab="Month", ylab="Number of Incidents")

theme_set(theme_bw(18))
