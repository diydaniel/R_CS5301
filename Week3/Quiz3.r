

airq <- read.csv("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/CSVs/airquality.csv",sep=",",header=T)
head(airq)

lowest_temp <- min(airq$Temp, na.rm = TRUE)
lowest_temp

lowest_when <- airq[which.min(airq$Temp), c("Month", "Day")]
lowest_when

highest_temp <- max(airq$Temp, na.rm = TRUE)
highest_temp

high_when <- airq[which.max(airq$Temp), c("Month", "Day")]
high_when

high_temp_may <- max(airq$Temp[airq$Month == 5], na.rm = TRUE)
high_temp_may

wtf_january <- any(airq$Month == 1, na.rm = TRUE)
wtf_january

#2
df <- data.frame(col1=c(1:3,NA,0,NA),col2=c(NA,4,0:3))
df

sum(is.na(df$col1))
sum(is.na(df$col2))
sum(!is.na(df))
sum(is.na(df$col1) &amp; is.na(df$col2))
sum(is.na(df$col1) & is.na(df$col2))


Assume you have a csv file (test.csv) that has three columns and four rows; first row as header. It is shown below:
  
  col1,col2,col3

1,3,x

0,1,NA

4,.,y





Let's say we read the file in three different ways:

data1 <- read.table("test.csv",sep=",",header=T,stringsAsFactors = TRUE,na.strings = c("NA"))

data2 <- read.table("test.csv",sep=",",header=T,stringsAsFactors = FALSE,na.strings = c("NA"))

data3 <- read.table("test.csv",sep=",",header=T,stringsAsFactors = TRUE,na.strings = c("NA","."))
data3

Match the R code with the appropriate outpu





 sum(as.numeric(data1$col2))

sum(as.numeric(data2$col2),na.rm=TRUE)




sum(as.numeric(data2$col2))




sum(is.na(data3))