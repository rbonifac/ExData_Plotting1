# readPlotData
library(dplyr)
#set working dir
setwd("~/Coursera/DataScience/Exploratory Data Analysis/Assignment")
#determine class of variables for faster reading
tab5rows <- read.table("./data/household_power_consumption.txt", header = TRUE, nrows = 5,sep=";",stringsAsFactors = FALSE)
classes <- sapply(tab5rows, class)
#read data file
epowerData<- read.table("./data/household_power_consumption.txt",sep=";",na.strings = "?",header=TRUE,stringsAsFactors = FALSE, strip.white=TRUE,colClasses = classes)
#convert datestring to date
epowerData$Date<-as.Date(epowerData$Date,"%d/%m/%Y")
#subset data for 2007-02-01 and 2007-02-02
epData<- filter( epowerData,Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
#add timestamp
epData$Datetime <- as.POSIXct(paste(epData$Date,epData$Time, sep=" "))




