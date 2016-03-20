setwd("C:/Users/Carrie/Desktop/Data Science/DataScience_4/Assignment1")
## Read in data.
dataall <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

##Selected out the dates specified
datasub <- subset(dataall,Date %in% c("1/2/2007", "2/2/2007"))

## Created a new date and time vector
dtetme <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## Create Plot, type l for line.
plot(dtetme,datasub$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")

## Add the additional lines
lines(dtetme,datasub$Sub_metering_2, type = "l", col = "red")
lines(dtetme,datasub$Sub_metering_3, type = "l", col = "blue")

## Add Legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
## Save as .png
dev.copy(png, file="Plot 3.png", width = 480, height = 480)

## Close plot
dev.off()