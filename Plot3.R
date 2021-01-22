household_power_consumption <- read.csv("~/R/household_power_consumption.txt", header=FALSE, sep=";")
subset_dates <- household_power_consumption[c(66638:69517),c(1:9)]
subset_dates[,c(3:9)]<-sapply(subset_dates[,c(3:9)], as.numeric)
plot(subset_dates$V2, subset_dates$V7, type = "l", col = "black", ylim = c(0,40), ylab="Energy submetering")
lines(subset_dates$V2, subset_dates$V8, type = "l", col = "red")
lines(subset_dates$V2, subset_dates$V9, type = "l", col = "blue")
legend("topright", legend=c("submetering_1","submetering_2", "submetering_3"),lty=c(1,1,1),col =c("black","red", "blue"))