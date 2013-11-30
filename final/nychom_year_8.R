library (ggplot2)

nychom <- read.table("/Users/danielletascone/dataviz/final/map_feed_incidents.txt", header=TRUE, sep="\t")

year <- nychom$year

names(nychom)
head(nychom)

qplot(factor(year), data=nychom, geom="bar", main="Total Number of Incidents by Year", xlab="Year", ylab="Incidents")

theme_set(theme_bw(18))