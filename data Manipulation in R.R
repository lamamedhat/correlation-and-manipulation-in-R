# Data manipulation means modifying
# data to make it easier to read and to be more organized
# We manipulate data to help us in analysis and visualization.
# Data manipulation is used to remove  inaccurate data 
# and make data more accurate to understand



data_set = read.csv("dataset_task.csv" , T)

summary(data_set)
str(data_set)
dim(data_set)  # show how many rows and how many columns
dim(data_set)[1]   # show the number of rows
dim(data_set)[2]  # show the number of columns
max(data_set$id)   # show the maximum value in id column
min(data_set$id)   ## show the minimum value in id column
mean(data_set$radius_mean)  # show the mean of the radius_mean column
data_set$area_mean      # show the only the column of area_mean
data_set[-1]   # remove the first column
data_set[c(-5,-9)]  # remove the 5th , 9th columns 
nrow(data_set)   # show the number of rows ---- its equall dim(data_Set)[1]
ncol(data_set)   # show the number of columns ---- its equall dim(data_Set)[2]


dataset2<-read.xlsx("CovidDashboard.xlsx" , sheetIndex = 1 ,header = T )
freq.table <- table(dataset2$Death.Avg)   #It is calculate the occurrences of unique values of a variable.
head(freq.table)                                        



