#
# Coursera : Exploring Data Projet 1 
# F. DJIAN
# 08/03/2015 20:21
# plot1.R
#

# Set Working Directory
setwd("C:/Users/yydjian/Documents/ExploringData/Prj1")

# Set Datafile name
dataFile <- "household_power_consumption.txt"

# Selecting subset - Only Two Days
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Convert to numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)

# Creating plot 
png("plot1.png", width=480, height=480)

# Histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Closing the device : Bye
dev.off()
