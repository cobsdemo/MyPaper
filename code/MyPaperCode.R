set.seed(1234)

x <- matrix(rnorm(600), 200, 3)
beta <- c(0, 1, 2)
logits <- x %*% beta

y <- rbinom(n = 200, size = 1, prob = 1 / (1 + exp(-logits)))

plot(x[y == 0, 1], x[y==0, 2], col = "blue")
points(x[y == 1, 1], x[y == 1, 2], col = "red")