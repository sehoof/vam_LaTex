mean_1=1
mean_2=0
sd=1.5 ub=0.4  x <- seq(-4,4,length=100)*sd + mean hx_1 <- dnorm(x,mean_1,sd) hx_2 <- dnorm(x,mean_2,sd) 
plot(x, hx_1, hx_2, xlab="s(theta)", ylab="pdf of s(theta)")  i <- x <= ub lines(x, hx) polygon(c(x[i],ub), c(hx[i],0), col="red")  area <- pnorm(ub, mean, sd) result <- paste("P(","s(theta) ", "<" ,ub,"| theta = 1",") =", signif(area, digits=3)) mtext(result,3) axis(1, at=seq(40, 160, 20), pos=0)