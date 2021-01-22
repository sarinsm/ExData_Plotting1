household_power_consumption <- read.csv("~/R/household_power_consumption.txt", header=FALSE, sep=";")
subset_dates <- household_power_consumption[c(66638:69517),c(1:9)]
subset_dates[,c(3:9)]<-sapply(subset_dates[,c(3:9)], as.numeric)
hist(subset_dates$V3, xlab="Global Active Power(Kilowatts)", main="Global Active Power", col="red")
