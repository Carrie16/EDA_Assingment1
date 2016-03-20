setwd("C:/Users/Carrie/Desktop/Data Science/DataScience_4/Assignment1")
## Read in data.
dataall <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

##Selected out the dates specified
datasub <- subset(dataall,Date %in% c("1/2/2007", "2/2/2007"))

## Created a new date and time vector, %d etc sets formatting
dtetme <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## Create Plot, type l for line.
plot(dtetme,datasub$Global_active_power, type = "l", ylab = "Global Active Power kilowatts)", xlab = "")

## Save as .png
dev.copy(png, file="Plot 2.png", width = 480, height = 480)

## Close plot
dev.off()