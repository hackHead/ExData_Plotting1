fullData<-read.csv("T:/Coursera/ExploratoryDataAnalysis/Project1/household_power_consumption.txt",sep = ";",header = TRUE, colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings = "?")
fullData$dateTime<-strptime(paste(fullData$Date, fullData$Time), "%d/%m/%Y %H:%M:%S")
data<-fullData[as.Date(fullData$dateTime) >= as.Date("2007-02-01") & as.Date(fullData$dateTime) <= as.Date("2007-02-02"), ]

#Plot 1
png(file="T:/github/ExData_Plotting1/plot1.png",width=480,height=480)
with(data,hist(Global_active_power,main = "Global Active Power",col = "red", xlab = "Global Active Power (kilowatts)"))
dev.off()
