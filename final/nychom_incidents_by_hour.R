library (ggplot2)

#file to use
fp <- "/Users/danielletascone/dataviz/"

#calls file for use
setwd(fp)

nychom$incident_time

hours <- substring(nychom$incident_time, 1, 2)
head(hours)


hours <- hours[!(hours == "")]
head(hours)


qplot(hours, main="Incidents by Time of Day", xlab="Time (24 Hour Clock)", ylab="Number of Incidents")

theme_set(theme_bw(18))