# ramen.cvs 데이터 로딩
ramen <- read.table(file = "C:\\Users\\samsung\\Downloads\\ramen.csv", header = T, sep = ",")

row.names(ramen) <- ramen$라면.이름
ramen2 <- ramen[, -1]
ramen2

# ramen2에 대한 상관행렬 구하기
cor(ramen2)

# 주성분분석 수행
pr.out <- prcomp(ramen2, scale = TRUE)

# 주성분 분석 내용을 조회한다.
summary(pr.out)

# plot 그래프
plot(pr.out, type="l")

# 주성분 분석의 결과로부터 행과 열의 행렬도를 표현
biplot(pr.out)
biplot(pr.out, scale =0)

# 주성분분석 수행
pr.out2 <- princomp(ramen2, cor = T)
summary(pr.out2)

print(pr.out2)

# plot 그래프
plot(pr.out2, type="l")

# 주성분 분석의 결과로부터 행과 열의 행렬도를 표현
biplot(pr.out2)
biplot(pr.out2, scale =0)

#각각에 대한 제1주성분, 제2주성분 점수를 구함
round(predict(pr.out), 2)
round(predict(pr.out2), 2)
