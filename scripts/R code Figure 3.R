### Figure 3, panel a

pop_size <- seq(0,3000,length.out = 100)

alpha <- (0.0000000005*pop_size^3+1)
beta  <- (0.0000000003*pop_size^3+0.6)

survival_prob <- as.data.frame(cbind(alpha = alpha,
                                     beta = beta, 
                                     mean = NA,
                                     median = NA,
                                     variance = NA,
                                     pop_size = pop_size))

for(i in 1:nrow(survival_prob)){
  
  survival_dist <- rbeta(1000,survival_prob$alpha[i],survival_prob$beta[i])
  survival_prob$mean[i] <- mean(survival_dist)
  survival_prob$median[i] <- median(survival_dist)
  survival_prob$variance[i] <- var(survival_dist)
  
}

# subset the data down to four distributions for panel A (for clarity)
survival_prob <- survival_prob[c(1,50,80,100),]

x <- seq(0,1,length=100)

plot(x, dbeta(x,survival_prob$alpha[1],survival_prob$beta[1]),
     ylim = c(0,4.5), type ='l',
     ylab = "",xlab = "", main = "", yaxt = "n",
     cex.axis = 1.3)
mtext("density",side = 2, line = 1, cex = 1.3)
mtext('survival probability', side = 1, line = 3, cex = 1.3)

for(i in 2:nrow(survival_prob)){
    lines(x,dbeta(x,survival_prob$alpha[i],survival_prob$beta[i]))
}

Fig3a.dat <- data.frame(x, dbeta(x,survival_prob$alpha[1],survival_prob$beta[1]),
                        dbeta(x,survival_prob$alpha[2],survival_prob$beta[2]),
                        dbeta(x,survival_prob$alpha[3],survival_prob$beta[3]),
                        dbeta(x,survival_prob$alpha[4],survival_prob$beta[4]))
colnames(Fig3a.dat) <- c("S", "dens1", "dens2", "dens3", "dens4")
head(Fig3a.dat)

write.table(Fig3a.dat, "Fig3aOut.csv", sep=",", row.names=F)



# Figure 3 - panel b to c
pop_size <- seq(0,3000,length.out = 100)

alpha <- (0.0000000005*pop_size^3+1)
beta  <- (0.0000000003*pop_size^3+0.6)

# recreate the full data for the rest of the panels
survival_prob <- as.data.frame(cbind(alpha = alpha,
                                     beta = beta, 
                                     mean = NA,
                                     median = NA,
                                     variance = NA,
                                     pop_size = pop_size))

for(i in 1:nrow(survival_prob)){
  
  survival_dist <- rbeta(1000,survival_prob$alpha[i],survival_prob$beta[i])
  survival_prob$mean[i] <- mean(survival_dist)
  survival_prob$median[i] <- median(survival_dist)
  survival_prob$variance[i] <- var(survival_dist)
  
}

plot(survival_prob$variance ~ survival_prob$mean, 
     pch = 19, cex = 1, col = "grey80", ylim = c(0,0.1),
     ylab = "",
     xlab = expression(mu*" survival prob."),
     cex.lab = 1.3)
mtext(expression(sigma^2*" survival prob."), side = 2, line = 3, cex = 1.3)

Fig3b.dat <- data.frame(survival_prob$mean, survival_prob$variance)
colnames(Fig3b.dat) <- c("Xs", "Vs")
head(Fig3b.dat)
write.table(Fig3b.dat, "Fig3bOut.csv", sep=",", row.names=F)


plot(survival_prob$variance ~ survival_prob$pop_size,
     pch = 19, cex = 1, col = "grey80", ylim = c(0,0.1),
     ylab = "",
     xlab = "population size",
     cex.lab = 1.3)
mtext(expression(sigma^2*" survival prob."), side = 2, line = 3, cex = 1.3)

Fig3c.dat <- data.frame(survival_prob$pop_size, survival_prob$variance)
colnames(Fig3c.dat) <- c("N", "Vs")
head(Fig3c.dat)
write.table(Fig3c.dat, "Fig3cOut.csv", sep=",", row.names=F)


plot(survival_prob$mean ~ survival_prob$pop_size,
     pch = 19, cex = 1, col = "grey80", ylim = c(0.59,0.66),
     ylab = "",
     xlab = "population size",
     cex.lab = 1.3)
mtext(expression(mu *" survival prob."), side = 2, line = 3, cex = 1.3)

Fig3d.dat <- data.frame(survival_prob$pop_size, survival_prob$mean)
colnames(Fig3d.dat) <- c("N", "Xs")
head(Fig3d.dat)
write.table(Fig3d.dat, "Fig3dOut.csv", sep=",", row.names=F)

