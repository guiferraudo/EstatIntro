data(iris)
summary(iris)
boxplot(iris[,-5])
#1, 2 e 3 quartis
quantile(iris[,1],probs=c(.25,.50,.75),type=5)
quantile(iris[,3],probs=c(.25,.50,.75),type=5)

par(mfrow=c(2,2))
hist(iris[,1], main = colnames(iris)[1])
hist(iris[,2], main = colnames(iris)[2])
hist(iris[,3], main = colnames(iris)[3])
hist(iris[,4], main = colnames(iris)[4])
pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species",
      pch = 21, bg = c("red", "green3", "blue")[unclass(iris$Species)])

#inserindo NA
iris[1:3,2:4] = NA
summary(iris)
boxplot(iris[,-5])


#Assimetria
par(mfrow = c(1,3))
hist(rbeta(10000,1,5), main = "Assimetria Positiva")
hist(rbeta(10000,5,1), main = "Assimetria Negativa")
hist(rbeta(10000,5,5), main = "Simetria")
par(mfrow = c(1,3))
boxplot(rbeta(10000,1,5), main = "Assimetria Positiva")
boxplot(rbeta(10000,5,1), main = "Assimetria Negativa")
boxplot(rbeta(10000,5,5), main = "Simetria")


library("mvtnorm")
par(mfrow=c(2,3))
plot(rmvnorm(10000,c(0,0),matrix(c(1,-0.9,-0.9,1),2,2)), main = "Normal Bi-variada / Correlação: -0.9")
plot(rmvnorm(10000,c(0,0),matrix(c(1,0.-0.5,-0.5,1),2,2)), main = "Normal Bi-variada / Correlação: -0.5")
plot(rmvnorm(10000,c(0,0),matrix(c(1,0.05,0.05,1),2,2)), main = "Normal Bi-variada / Correlação: 0.05", col = "darkblue")
plot(rmvnorm(10000,c(0,0),matrix(c(1,0.3,0.3,1),2,2)), main = "Normal Bi-variada / Correlação: 0.3")
plot(rmvnorm(10000,c(0,0),matrix(c(1,0.5,0.5,1),2,2)), main = "Normal Bi-variada / Correlação: 0.5")
plot(rmvnorm(10000,c(0,0),matrix(c(1,0.9,0.9,1),2,2)), main = "Normal Bi-variada / Correlação: 0.9")




