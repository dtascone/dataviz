# Iris Data Assignment One


# Create two columns on single row
par(
  mfrow=c(1,2),
  xpd=TRUE
)

 
# Create scatter plot for petals
plot(
  iris$Petal.Length, #data
  iris$Petal.Width, #data
  pch=21, # type of symbol
  bg=c("darkorchid3", "chartreuse", "dodgerblue1")[unclass(iris$Species)], #colors
  main="Iris Petal Size by Species", # main title
  xlab="Length (cm)", # x title
  ylab="Width (cm)" # y title
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
  main="Iris Sepal Size by Species",
  xlab="Length (cm)",
  ylab="Width (cm)"
)

#Legend for Sepals
legend("bottomright", 
  cex=0.50, 
  pch=16, 
  col=c("darkorchid3", "chartreuse", "dodgerblue1"), 
  legend=c("Setosa", "Versicolor", "Virginica"), 
  ncol=3
)


#The means of the specie data so I could correlate the info to what my code was producing
aggregate(iris[,1:4], iris["Species"], function(x) mean(x,na.rm=T))


  