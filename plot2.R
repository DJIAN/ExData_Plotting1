#
# Coursera : Exploring Data Projet 1 
# F. DJIAN
# 08/03/2015 20:21
# plot2.R
#

# Set Working Directory
setwd("C:/Users/yydjian/Documents/ExploringData/Prj1")

# Set Datafile name
dataFile <- "household_power_consumption.txt"

# Selecting subset - Only Two Days
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Setting the time
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Converting into numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)

# Ploting
png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Closing the device : Bye
dev.off()
