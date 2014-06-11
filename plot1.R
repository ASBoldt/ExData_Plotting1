# Plot 1

# 1 - Select the dates 2007-02-01 and 2007-02-02
datas<-c("1/2/2007","2/2/2007")
dados2<-dados[dados$Date %in% datas,]
summary(dados2)
head(dados2)

# 2 - Plot 1

png(filename="plot1.png",height=480,width=480,units="px")
hist(dados2$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()