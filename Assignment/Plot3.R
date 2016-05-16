#Plot 3

with(epData, plot(Datetime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
points(epData$Datetime,epData$Sub_metering_2,type="l",col="red")
points(epData$Datetime,epData$Sub_metering_3,type="l",col="blue")
legend("topright",col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lwd=1)
#save to png file
dev.copy(png, file = "plot3.png",width=480,height=480)  
dev.off()