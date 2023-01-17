ramen <- read.table(file = "C:\\Users\\samsung\\Downloads\\ramen.csv", header = T, sep = ",")

row.names(ramen) <- ramen$라면.이름
ramen2 <- ramen[, -1]
ramen2

cor(ramen2)

pr.out <- prcomp(ramen2, scale = TRUE)
summary(pr.out)


plot(pr.out, type="l")

biplot(pr.out)
biplot(pr.out, scale =0)

pr.out2 <- princomp(ramen2, cor = T)
summary(pr.out2)

print(pr.out2)


plot(pr.out2, type="l")

biplot(pr.out2)
biplot(pr.out2, scale =0)

round(predict(pr.out), 2)
round(predict(pr.out2), 2)

