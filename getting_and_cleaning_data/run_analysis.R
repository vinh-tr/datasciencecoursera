#load library
library(dplyr)
library(data.table)

# download zip file and unzip it
url='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
zipfilename = 'data.zip'
download.file(url, zipfilename)
unzip(zipfilename)

################
# read data
data_repertory <- "UCI HAR Dataset"

# read activity label
activity_label <- fread(file.path(data_repertory, 'activity_labels.txt'))
activity <- activity_label$V2
names(activity) <- activity_label$V1

# read the variable names file
feature_name = fread(file.path(data_repertory, 'features.txt'))

# read train and test dataset
X_train <- fread(file.path(data_repertory, 'train', 'X_train.txt'))
Y_train <- fread(file.path(data_repertory, 'train', 'y_train.txt'))
                  
X_test <- fread(file.path(data_repertory, 'test', 'X_test.txt'))
Y_test <- fread(file.path(data_repertory, 'test', 'y_test.txt'))

# label the activity for the train and test dataset
activity_train = activity[Y_train$V1]
activity_test = activity[Y_test$V1]

# bind the data
d <- bind_rows(
  bind_cols(activity=activity_train, X_train),
  bind_cols(activity=activity_test, X_test)
)

# rename the column
colnames(d) <- c('activity', feature_name$V2)

# Extracts only the measurements on the mean and standard deviation 
# and keeps the variable activity (1st position)
list_variables = grep('(mean\\(\\)|std\\(\\))', colnames(d))
d <- d[, c(1, list_variables)]

#remove parenthesis from the variable name
colnames(d) <- gsub('[()]', '',colnames(d))

#write data into a file
write.table(d, 'my_tidy_dataset.csv', sep=',', row.names = F)


