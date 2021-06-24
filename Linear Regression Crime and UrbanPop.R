library(ggplot2)
datasets::USArrests
summary(USArrests)
USArrests<-transform(USArrests, crimetotal=Murder+Assault+Rape)
ggplot(aes(y=crimetotal, x=UrbanPop), data = USArrests) + geom_point()
USArrests.regression<-lm(crimetotal~UrbanPop, data=USArrests)
summary(USArrests.regression)
plot(USArrests$UrbanPop, USArrests$crimetotal)
abline(USArrests.regression, col="blue")