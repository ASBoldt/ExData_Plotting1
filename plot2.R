# Plot 2

# 1 - Select the dates 2007-02-01 and 2007-02-02
datas<-c("1/2/2007","2/2/2007")
dados2<-dados[dados$Date %in% datas,]
summary(dados2)
head(dados2)

# 2 - Plot 2

dataehora<-paste(dados2$Date,dados2$Time)
dados2$diora<-strptime(dataehora,"%d/%m/%Y  %H:%M:%S" ) # Create a column with day and hour

png(filename="plot2.png",height=480,width=480,units="px")
plot(dados2$diora,dados2$Global_active_power,type="l",xlab="",ylab="Global Active Power")
dev.off()