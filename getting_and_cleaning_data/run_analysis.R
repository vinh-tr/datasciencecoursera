#load library
library(tidyverse)
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

# read train/test datasets and the id subjects
X_train <- fread(file.path(data_repertory, 'train', 'X_train.txt'))
Y_train <- fread(file.path(data_repertory, 'train', 'y_train.txt'),
                 col.names = 'act_idx')
subject_train <- fread(file.path(data_repertory, 'train', 'subject_train.txt'),
                  col.names = 'id')

X_test <- fread(file.path(data_repertory, 'test', 'X_test.txt'))
Y_test <- fread(file.path(data_repertory, 'test', 'y_test.txt'),
                col.names = 'act_idx')
subject_test <- fread(file.path(data_repertory, 'test', 'subject_test.txt'),
                      col.names = c('id'))

# label the activity for the train and test dataset
activity_train = activity[as.character(Y_train$act_idx)]
activity_test = activity[as.character(Y_test$act_idx)]

# bind the data
d <- bind_rows(
  bind_cols(subject_id=subject_train$id, activity=activity_train, X_train),
  bind_cols(subject_id=subject_test$id, activity=activity_test, X_test)
)

# rename the column
colnames(d) <- c('subject_id', 'activity', feature_name$V2)

# Extracts only the measurements on the mean and standard deviation 
# and keeps the variable activity (1st position)
list_variables = grep('(mean\\(\\)|std\\(\\))', colnames(d))
d <- d[, c(1:2, list_variables)]

#remove parenthesis from the variable name
colnames(d) <- gsub('[()]', '',colnames(d))

#avg each measurement for each activity and individual
avg_d <- d %>%
  group_by(subject_id, activity) %>%
  summarise_all(mean)

#write data into a file
write.table(avg_d, 'my_dataset_avg.csv', sep=',', row.names = F)
