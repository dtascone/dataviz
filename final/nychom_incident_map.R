library (ggplot2)
library (maptools)
library (rgdal)
library(grid)

fn <- "map_feed_incidents.txt"
mapshape <- "nybb_13a"

nychom <- read.table(fn, header=TRUE, sep="\t")

nychom$DateTime <- strptime(paste(nychom$incident_date.STRING, nychom$incident_time.STRING), format="%m/%d/%y %H:%M")
class(nychom$DateTime)

#data info
head(nychom)
summary(nychom)

#shows variables
names(nychom)

projx <- "+proj=lcc +lat_1=41.03333333333333 +lat_2=40.66666666666666 +lat_0=40.16666666666666 +lon_0=-74 +x_0=300000.0000000001 +y_0=0 +datum=NAD83 +units=us-ft +no_defs"

setwd(mapshape)
nyc_shp <- readShapeSpatial("nybb.shp", proj4string = CRS(projx))
nycs <- fortify(nyc_shp)
head(nycs)

map <- data.frame(project(cbind(aggADmap$Longitude, aggADmap$Latitude), projx))
head(map)

mapAD <- cbind(aggADmap, map)
head(mapAD)

# create a data frame of homicide locations (lat, long, and name)
aggnychom <- aggregate(nychom[,c(1,2)], by=list(nychom$id), FUN=min, na.rm=TRUE)
head(aggnychom)

map <- data.frame(project(cbind(aggnychom$LONG, aggnychom$LAT), projx))
head(map)

mapAD <- cbind(aggnychom, map)
head(mapAD)

require(grid)

#produces the map
ggplot() +
geom_polygon(data=nychom, aes(x = long, y = lat, group=group), fill="grey") +
  geom_point(data=mapAD, aes(x = X1, y = X2), color="red") +
  geom_point(data=mapAD, aes(x = X1, y = X2, size=x), color="red") +
  coord_cartesian(xlim=c(975000, 1025000), ylim=c(175000, 225000)) +
  theme(line = element_blank()) +
  theme(rect = element_blank()) +
  theme(text = element_blank()) +
  theme(title = element_blank()) +
  theme(plot.margin = unit(c(0,0,0,0), "in")) + 
  theme(legend.position="none") +
  labs(x=NULL, y=NULL) +
  scale_x_continuous(expand=c(0,0)) 
