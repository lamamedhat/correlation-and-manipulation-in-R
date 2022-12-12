
# instructions to follow while useing correlation either in using different 
# datasets or make correlation between two columns on the same dataset :
# 1) two datasets must be the same length in rows & in columns
# 2) dataset must be in vector form " usually the dataset is list form
#    so before doing correlation you have to convert list form to vector
#    form


install.packages("xlsx")
library("xlsx")

install.packages("corrplot")
library("corrplot")



dataset1=read.csv("dataset_task.csv" , T)
dataset1=dataset1[-2]
cor(dataset1)

corrplot(cor(dataset1), method = "square" )



 

          ###### correlation between The same dataset ######

#dataset1
dataset1=read.csv("dataset_task.csv" , T)
# correlation between radius_mean and texture_mean columns
radius_mean_col=dataset1$radius_mean
texture_mean_col=dataset1$texture_mean

correlation =cor(radius_mean_col,texture_mean_col,method = "pearson")
correlation
# correlation_test between radius_mean and texture_mean columns

correlation_test =cor.test(radius_mean_col,texture_mean_col,method = "pearson")
correlation_test




#dataset2
dataset2<-read.xlsx("CovidDashboard.xlsx" , sheetIndex = 1 ,header = T )
# correlation between radius_mean and texture_mean columns
Active_col=dataset2$Active
Deaths_col=dataset2$Deaths
corr =cor(Active_col,Deaths_col,method = "pearson")
corr
# correlation_test between radius_mean and texture_mean columns

corr_t =cor.test(Active_col,Deaths_col,method = "pearson")
corr_t






              ###### correlation between Two different datasets ######

# dataset 1 
dataset1=read.csv("dataset_task.csv" , T)
# choose column number 3 and 4 to display
numeric_dataset1<-dataset1[c(5,6)]  
# reduce the number of row to be equall the num. of rows in dataset2 
change_num_of_rows_in_Dataset1<-numeric_dataset1[1:36,]
# show the number of rows and columns of dataset 1 after changing
dim(change_num_of_rows_in_Dataset1) 
# convert dataset1 from list to vector form
unlist_numeric_dataset1<-unlist(change_num_of_rows_in_Dataset1)



# dataset2
dataset2<-read.xlsx("CovidDashboard.xlsx" , sheetIndex = 1 ,header = T )
## choose column number 3 and 4 to display
numeric_dataset2<-dataset2[c(6,7)]
# convert dataset1 from list to vector form
unlist_numeric_dataset2<-unlist(numeric_dataset2)


#correlation_coefficient -----> cor()
correlation_coefficient = cor(unlist_numeric_dataset1, 
                              unlist_numeric_dataset2
                              , method = "pearson")

# cat is used to print the string
cat("correlation coefficient is:", correlation_coefficient)


















