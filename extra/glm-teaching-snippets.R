# MULTIPLE REGRESSION

x1 <- rnorm(100)
x2 <- rnorm(100)
x3 <- rnorm(100)

y <- 0.3 + 0.2*x1 + 0*x2 + 0.7*x3 + rnorm(100)



# manual cook distance

hii <- hatvalues(full)
di <- rep(0, nrow(dat))
p <- length(coef(full))
s <- sigma(full)

for(i in 1:nrow(dat)){
    # standardized residual
    ri <- residuals(full)[i] / (s * sqrt(1 - hii[i]))
    
    # 
    di[i] <- (ri^2 / 4) * (hii[i] / (1 - hii[i]))
    
}

data.frame(
    di = cooks.distance(full),
    dim = di
) |> 
    round(4)


residuals(full) / sqrt((sigma(full)^2 * (1 - hii)))
residuals(full, type = "pearson") 






