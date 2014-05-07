#Exploratory Data Anlysis Project1

###Repository description
The scripts plot1.R, plot2.R, plot3.R and plot4.R create PNG files plot1,plot2,plot3, and plot4 as detailed 
in the project description. The scripts validate the presence of the original data file, load a subset of 
the data from the dates 2007-02-01 and 2007-02-02. 

The complete data file contains electrical usage for one household over a 4 year period**[1]**

The data set contains the following columns

1.Date: format:dd/mm/yyyy
2.Time: format hh:mm:ss
3.Global_active_power: household global minute-averaged active power as kilowatts)
4.Global_reactive_power: household global minute-averaged reactive power as kilowatts)
5.Voltage: minute-averaged voltage as volts)
6.Global_intensity: household global minute-averaged current intensity as amperes
7.Sub_metering_1: Corresponds to energy use in watt-hours in the kitchen
8.Sub_metering_2: Corresponds to energy use in watt-hours in the laundry room
9.Sub_metering_3: Corresponds to energy use in watt-hours for electric water-heater and an air-conditioner.

an additional column "datetime" was created combining date and time into a POSIXct format for plotting

**1** https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption