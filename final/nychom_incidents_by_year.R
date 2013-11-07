library (ggplot2)

nychom <- read.table("map_feed_incidents.txt", header=TRUE, sep="\t")

year <- nychom$year

names(nychom)
head(nychom)

qplot(factor(year), data=nychom, geom="bar", main="Total Number of Incidents by Year", xlab="Year", ylab="Incidents")