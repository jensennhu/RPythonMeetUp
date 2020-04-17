library(readr)
library(data.table)

#CSV & XLSX
system.time(data_csv <- read.csv("Mental_Health_Records_Report_2020-04-09_06_40.csv"))
data_xlsx <- read.xlsx("c:/myexcel.xlsx", sheetName = "mysheet")

#read.csv vs. read_csv?  read_csv is much faster for larger csv files
system.time(data_csv2<- read_csv("Mental_Health_Records_Report_2020-04-09_06_40.csv"))

#fread? even faster.
system.time(fread("Mental_Health_Records_Report_2020-04-09_06_40.csv"))

library(RSocrata)
library(dplyr)

#JSON example: https://health.data.ny.gov/Health/New-York-State-Statewide-COVID-19-Testing/xdss-u53e
data_json<-read.socrata("https://health.data.ny.gov/resource/xdss-u53e.json")

#Github example: https://github.com/nytimes/covid-19-data 
data_github<-read.csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv")

