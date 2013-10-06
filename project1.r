# Iris Data Assignment One

# Create two columns on single row
par(
  mfrow=c(1,2))
 
# Create scatter plot for petals
plot(
  iris$Petal.Length,
  iris$Petal.Width,
  pch=21, # type of symbol
  bg=c("darkorchid3", "chartreuse", "dodgerblue1")[unclass(iris$Species)],
  main="Petal", # main title
  xlab="Length", # x title
  ylab="Width" # y title
)
 
# Create scatter plot for sepal
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  pch=21,
  bg=c("purple","green3","blue")[unclass(iris$Species)],
  main="Sepal",
  xlab="Length",
  ylab="Width"
)
