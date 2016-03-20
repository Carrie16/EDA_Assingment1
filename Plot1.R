setwd("C:/Users/Carrie/Desktop/Data Science/DataScience_4/Assignment1")
## Read in data.
dataall <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

##Selected out the dates specified
datasub <- subset(dataall,Date %in% c("1/2/2007", "2/2/2007"))

## Created the Histogram. Make sure to set Global_active_power as numeric, x must be numeric
hist(as.numeric(datasub$Global_active_power), col = "red", main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)")

## Copied to .png file
dev.copy(png, file="Plot 1.png", width = 480, height = 480)

## Closed plot.
dev.off()