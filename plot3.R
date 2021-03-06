fullData<-read.csv("T:/Coursera/ExploratoryDataAnalysis/Project1/household_power_consumption.txt",sep = ";",header = TRUE, colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings = "?")
fullData$dateTime<-strptime(paste(fullData$Date, fullData$Time), "%d/%m/%Y %H:%M:%S")
data<-fullData[as.Date(fullData$dateTime) >= as.Date("2007-02-01") & as.Date(fullData$dateTime) <= as.Date("2007-02-02"), ]

#plot 3
png(file="T:/github/ExData_Plotting1/plot3.png",width=480,height=480)
with(data, {
  plot(dateTime,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(dateTime,Sub_metering_2, type = "l", col = "red")
  lines(dateTime,Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty = 1 , col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
})

dev.off()
