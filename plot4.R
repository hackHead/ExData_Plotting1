fullData<-read.csv("T:/Coursera/ExploratoryDataAnalysis/Project1/household_power_consumption.txt",sep = ";",header = TRUE, colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings = "?")
fullData$dateTime<-strptime(paste(fullData$Date, fullData$Time), "%d/%m/%Y %H:%M:%S")
data<-fullData[as.Date(fullData$dateTime) >= as.Date("2007-02-01") & as.Date(fullData$dateTime) <= as.Date("2007-02-02"), ]

#plot 4
png(file="T:/github/ExData_Plotting1/plot4.png",width=480,height=480)

par(mfcol= c(2,2))
#plot 4.1
with(data, {
  plot(dateTime,Global_active_power,type = "l",xlab = "",ylab = "Global Active Power")
#plot 4.2
  plot(dateTime,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(dateTime,Sub_metering_2, type = "l", col = "red")
  lines(dateTime,Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty = 1 , col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),bty = 'n')
#plot 4.3
  plot(dateTime, Voltage, type = "l")
#plot 4.4
  plot(dateTime, Global_reactive_power, type = "l")
})

dev.off()
