# Plot 4
par(mfrow = c(2, 2)) 
with(epData, {    
  plot(Datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
  plot(Datetime,Voltage,type="l")
  plot(Datetime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(epData$Datetime,epData$Sub_metering_2,type="l",col="red")
points(epData$Datetime,epData$Sub_metering_3,type="l",col="blue")
legend("topright", col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       bty="n",lwd=1,y.intersp=.65,xjust=1,yjust=1)
       
plot(Datetime,Global_reactive_power,type="l")
})
#save to png file
dev.copy(png, file = "plot4.png",width=480,height=480)  
dev.off()