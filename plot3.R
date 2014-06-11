# Plot 3

# 1 - Select the dates 2007-02-01 and 2007-02-02
datas<-c("1/2/2007","2/2/2007")
dados2<-dados[dados$Date %in% datas,]
summary(dados2)
head(dados2)

# 2 - Plot 3

dataehora<-paste(dados2$Date,dados2$Time)
dados2$diora<-strptime(dataehora,"%d/%m/%Y  %H:%M:%S" ) # Create a column with day and hour


png(filename="plot3.png",height=480,width=480,units="px")
plot(dados2$diora,dados2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(dados2$diora,dados2$Sub_metering_2,col="red")
lines(dados2$diora,dados2$Sub_metering_3,col="blue")
legend("topright",
       lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
       
dev.off()
