#Exploratory Data Anlysis Project1

##Getting and Cleaning Data project
The scripts plot1.R, plot2.R, plot3.R and plot4.R create PNG files plot1,plot2,plot3, and plot4 as detailed in the project description. The scripts validate the presence of the original data file, load a subset of the data from the dates 2007-02-01 and 2007-02-02. 

The complete data file contains electrical usage for one household over a 4 year period*[1]*

The data set contains the following columns

-Date: format:dd/mm/yyyy
-Time: format hh:mm:ss
-Global_active_power: household global minute-averaged active power as kilowatts)
-Global_reactive_power: household global minute-averaged reactive power as kilowatts)
-Voltage: minute-averaged voltage as volts)
-Global_intensity: household global minute-averaged current intensity as amperes
-Sub_metering_1: Corresponds to energy use in watt-hours in the kitchen
-Sub_metering_2: Corresponds to energy use in watt-hours in the laundry room
-Sub_metering_3: Corresponds to energy use in watt-hours for electric water-heater and an air-conditioner.

an additional column "datetime" was created combining date and time into a POSIXct format for plotting

*1* https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption