rm(list = ls())
setwd("D:/My Data/PersonalFiles_for_Backup/Coursera/Course4_Week1")
hpc<-data.frame(read.table("household_power_consumption.txt",skip=0,header=TRUE,sep=";"))

hpc=hpc[with(hpc,Date=="1/2/2007"|Date=="2/2/2007"),]

hpc$date<-strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S")


hpc$Global_active_power<-as.numeric(as.character(hpc$Global_active_power))
hpc$Global_reactive_power<-as.numeric(as.character(hpc$Global_reactive_power))
hpc$Sub_metering_1<-as.numeric(as.character(hpc$Sub_metering_1))
hpc$Sub_metering_2<-as.numeric(as.character(hpc$Sub_metering_2))
hpc$Sub_metering_3<-as.numeric(as.character(hpc$Sub_metering_3))
hpc$Voltage<-as.numeric(as.character(hpc$Voltage))                               
png(filename="plot1.png")
hist(hpc$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
