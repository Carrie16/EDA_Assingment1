setwd("C:/Users/Carrie/Desktop/Data Science/DataScience_4/Assignment1")
## Read in data.
dataall <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

##Selected out the dates specified
datasub <- subset(dataall,Date %in% c("1/2/2007", "2/2/2007"))

## Created a new date and time vector
dtetme <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## set the device to show 4 plots, 2 rows with 2 columns
par(mfrow = c(2,2))

## Add the different plots
plot(dtetme,datasub$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

plot(dtetme,datasub$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(dtetme,datasub$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(dtetme,datasub$Sub_metering_2, type = "l", col = "red")
lines(dtetme,datasub$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty = "n")
plot(dtetme,datasub$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.copy(png, file="Plot 4.png", width = 480, height = 480)

## Close plot
dev.off()