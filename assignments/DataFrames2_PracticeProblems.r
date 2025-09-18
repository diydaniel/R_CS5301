
# 1. Replace all NA values in a Data Frame by 3

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
exam_data

is.na(exam_data$attempts)
sum(is.na(exam_data$attempts))

# Solution
exam_data[is.na(exam_data)] <- 3
exam_data

# 2. Read the CSV file ‘airquality.csv’. Find average temperature in month of May and June

data <- read.table('C:\\Users\\soibamb\\Dropbox\\Teaching\\CS5301\\airquality.csv',header=T,sep=",")

data <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/CSVs/airquality.csv",sep=",",header=T)
head(data)

# all Temps collected for month of May(5)
data$Temp[data$Month == 5]
# average of temps for month of May
mean(data$Temp[data$Month == 5], na.rm = TRUE)

# all Temps collected for month of June(6)
data$Temp[data$Month == 6]
mean(data$Temp[data$Month == 6], na.rm = TRUE)

# 3. Read the CSV file ‘airquality.csv’ and remove all rows that contain NA or missing values. Save the new data frame to a different csv file.

new_data <- data[complete.cases(data),]
new_data

is.na(new_data)
sum(is.na(new_data))



write.table(new_data, "/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/CSVs/NewAirData.csv",sep=",", row.names = FALSE, quote = FALSE)

# 4. Read the CSV file ‘airquality.csv’. Extract rows that corresponds to Month of may or June; and temperatue between 60 and 70

x <- (data$Month == 5 | data$Month == 6) & (data$Temp >= 60 & data$Temp <= 70)

data_8 <- data[x,]
data_8

# 5. Read the CSV file ‘airquality.csv’. Extract different data frames that corresponds to Month of May, June, July, and August and save them in different sheets of a single excel workbook.



# 6. Read the CSV file ‘airquality.csv’. Find out how many days in the Month of may the temperatue was greater than 70

# one way
y <- data$Temp[data$Month == 5]
y
sum(y > 70, na.rm = TRUE)

# alternative 1
data[data$Temp > 70,] $Month ==5
sum(data[data$Temp > 70,] $Month ==5, na.rm = TRUE)

# alternative 2
data_9 <- data[data$Month == 5 & data$Temp > 70,]


nrow(data_9)

