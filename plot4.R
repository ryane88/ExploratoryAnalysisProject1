#common to all plots, check for data file and read in file from working directory

if(!file.exists("./household_power_consumption.txt")){
    
    stop("

  ***It looks like you have not downloaded and unzipped the individual electrical household 
  power data setin your working directory
  please download from : 
  https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zipp 

  and unzip to your current working directory")
  }

hpower<-read.csv("household_power_consumption.txt",sep=";",header=TRUE)
#subset for dates 2007-02-01 ad 2007-02-02 
hpow<-hpower[which(as.character(hpower$Date)=="1/2/2007"|as.character(hpower$Date)=="2/2/2007"),]

#create new POSIXct column combining Date and Time columns
hpow$datetime<-as.POSIXct(paste(as.Date(hpow$Date,format="%d/%m/%Y"),hpow$Time))

#convert appropriate columns to numeric
hpow$Global_active_power<- as.numeric(as.character(hpow$Global_active_power))  
hpow$Global_reactive_power<- as.numeric(as.character(hpow$Global_reactive_power))  
hpow$Voltage<- as.numeric(as.character(hpow$Voltage))  
hpow$Global_intensity<- as.numeric(as.character(hpow$Global_intensity))  
hpow$Sub_metering_1<- as.numeric(as.character(hpow$Sub_metering_1))  
hpow$Sub_metering_2<- as.numeric(as.character(hpow$Sub_metering_2))  
hpow$Sub_metering_3<- as.numeric(as.character(hpow$Sub_metering_3))


#4 individual plots of Global Active Power, Voltage, 3 sub metering areas, and Global Reactive Power
#for dates 2007-02-01 and 2007-02-02

png("plot4.png",width=490,height=490,units="px",bg="transparent")
par(mfrow=c(2,2))
plot(hpow$Global_active_power~hpow$datetime,type="l",xlab="",ylab="Global Active Power")
Sys.sleep(0.1)
plot(hpow$Voltage~hpow$datetime,type="l",xlab="datetime",ylab="Voltage",col="gray10")
Sys.sleep(0.1)                        
plot(hpow$Sub_metering_1~hpow$datetime,type="l",ylab="Energy sub metering",xlab="")
lines(hpow$Sub_metering_2~hpow$datetime,col="#ff2500")
lines(hpow$Sub_metering_3~hpow$datetime,col="#0000ff")
                        
legend("topright",legend=names(hpow[,7:9]),lty=c(1,1,1),bty="n",lwd=c(1,1,1),col=c("black","#ff2500","#0000ff"))
Sys.sleep(0.1)                        

plot(hpow$Global_reactive_power~hpow$datetime,type="l",ylab="Global_reactive_power",col="gray10",xlab="datetime",lwd=0.5)
dev.off()