# Iris Data Assignment One

# Create two columns on single row
par(
  mfrow=c(1,2),
  xpd=TRUE
)
 
# Create scatter plot for petals
plot(
  iris$Petal.Length,
  iris$Petal.Width,
  pch=21, # type of symbol
  bg=c("darkorchid3", "chartreuse", "dodgerblue1")[unclass(iris$Species)],
  main="Petal Data in Centimeters", # main title
  xlab="Length", # x title
  ylab="Width" # y title
)

#Legend for Petals
legend("bottomright", 
  cex=0.50, 
  pch=16, 
  col=c("darkorchid3", "chartreuse", "dodgerblue1"), 
  legend=c("Setosa", "Versicolor", "Virginica"), 
  ncol=3
  )
 

# Create scatter plot for sepal
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  pch=21,
  bg=c("darkorchid3", "chartreuse", "dodgerblue1")[unclass(iris$Species)],
  main="Sepal Data in Centimeters",
  xlab="Length",
  ylab="Width"
)

#Legend for Sepals
legend("bottomright", 
  cex=0.50, 
  pch=16, 
  col=c("darkorchid3", "chartreuse", "dodgerblue1"), 
  legend=c("Setosa", "Versicolor", "Virginica"), 
  ncol=3)


#The means of the specie data so I could correlate the info to what my code was producing
aggregate(iris[,1:4], iris["Species"], function(x) mean(x,na.rm=T))


  