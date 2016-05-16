#Plot 2
with(epData, plot(Datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
#save to png file
dev.copy(png, file = "plot2.png",width=480,height=480)  
dev.off()
