set.seed(19610906)

big2 <- round(rnorm(15, mean = 22.1, sd = 0.9), 1)
small2 <- round(rnorm(15, mean = 19.8, sd = 0.9), 1)

big1 <- round(rnorm(15, mean = 22.1, sd = 0.9), 1)
small1 <- round(rnorm(15, mean = 19.8, sd = 0.9), 1)


t.test(x = big1, 
       y = small1,
       var.equal = TRUE)

t.test(x = big2, 
       y = small2,
       var.equal = TRUE)

# Save data
df1 <- data.frame(x, small1, big1)
write.csv(df1, file = "sample1.csv")

df2 <- data.frame(x, small2, big2)
write.csv(df2, file = "sample2.csv")


