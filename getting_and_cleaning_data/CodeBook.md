Getting and Cleaning Data Course Project
-----



## Description of the project
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Raw data
 The data linked to from the course website (and this repo) represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The instructions list to produce the processed data
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Code book
| variable     | type          | comment  |
| ------------ |-------------| -----|
| activity     | string        | possible values: "STANDING", "SITTING", "LAYING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS" |
| tBodyAcc-mean-X | numeric  | between -1 and 1 |
| tBodyAcc-mean-Y | numeric  | between -1 and 1 |
| tBodyAcc-mean-Z | numeric  | between -1 and 1 |
| tBodyAcc-std-X | numeric  | between -1 and 1 |
| tBodyAcc-std-Y | numeric  | between -1 and 1 |
| tBodyAcc-std-Z | numeric  | between -1 and 1 |
| tGravityAcc-mean-X | numeric  | between -1 and 1 |
| tGravityAcc-mean-Y | numeric  | between -1 and 1 |
| tGravityAcc-mean-Z | numeric  | between -1 and 1 |
| tGravityAcc-std-X | numeric  | between -1 and 1 |
| tGravityAcc-std-Y | numeric  | between -1 and 1 |
| tGravityAcc-std-Z | numeric  | between -1 and 1 |
| tBodyAccJerk-mean-X | numeric  | between -1 and 1 |
| tBodyAccJerk-mean-Y | numeric  | between -1 and 1 |
| tBodyAccJerk-mean-Z | numeric  | between -1 and 1 |
| tBodyAccJerk-std-X | numeric  | between -1 and 1 |
| tBodyAccJerk-std-Y | numeric  | between -1 and 1 |
| tBodyAccJerk-std-Z | numeric  | between -1 and 1 |
| tBodyGyro-mean-X | numeric  | between -1 and 1 |
| tBodyGyro-mean-Y | numeric  | between -1 and 1 |
| tBodyGyro-mean-Z | numeric  | between -1 and 1 |
| tBodyGyro-std-X | numeric  | between -1 and 1 |
| tBodyGyro-std-Y | numeric  | between -1 and 1 |
| tBodyGyro-std-Z | numeric  | between -1 and 1 |
| tBodyGyroJerk-mean-X | numeric  | between -1 and 1 |
| tBodyGyroJerk-mean-Y | numeric  | between -1 and 1 |
| tBodyGyroJerk-mean-Z | numeric  | between -1 and 1 |
| tBodyGyroJerk-std-X | numeric  | between -1 and 1 |
| tBodyGyroJerk-std-Y | numeric  | between -1 and 1 |
| tBodyGyroJerk-std-Z | numeric  | between -1 and 1 |
| tBodyAccMag-mean | numeric  | between -1 and 1 |
| tBodyAccMag-std | numeric  | between -1 and 1 |
| tGravityAccMag-mean | numeric  | between -1 and 1 |
| tGravityAccMag-std | numeric  | between -1 and 1 |
| tBodyAccJerkMag-mean | numeric  | between -1 and 1 |
| tBodyAccJerkMag-std | numeric  | between -1 and 1 |
| tBodyGyroMag-mean | numeric  | between -1 and 1 |
| tBodyGyroMag-std | numeric  | between -1 and 1 |
| tBodyGyroJerkMag-mean | numeric  | between -1 and 1 |
| tBodyGyroJerkMag-std | numeric  | between -1 and 1 |
| fBodyAcc-mean-X | numeric  | between -1 and 1 |
| fBodyAcc-mean-Y | numeric  | between -1 and 1 |
| fBodyAcc-mean-Z | numeric  | between -1 and 1 |
| fBodyAcc-std-X | numeric  | between -1 and 1 |
| fBodyAcc-std-Y | numeric  | between -1 and 1 |
| fBodyAcc-std-Z | numeric  | between -1 and 1 |
| fBodyAccJerk-mean-X | numeric  | between -1 and 1 |
| fBodyAccJerk-mean-Y | numeric  | between -1 and 1 |
| fBodyAccJerk-mean-Z | numeric  | between -1 and 1 |
| fBodyAccJerk-std-X | numeric  | between -1 and 1 |
| fBodyAccJerk-std-Y | numeric  | between -1 and 1 |
| fBodyAccJerk-std-Z | numeric  | between -1 and 1 |
| fBodyGyro-mean-X | numeric  | between -1 and 1 |
| fBodyGyro-mean-Y | numeric  | between -1 and 1 |
| fBodyGyro-mean-Z | numeric  | between -1 and 1 |
| fBodyGyro-std-X | numeric  | between -1 and 1 |
| fBodyGyro-std-Y | numeric  | between -1 and 1 |
| fBodyGyro-std-Z | numeric  | between -1 and 1 |
| fBodyAccMag-mean | numeric  | between -1 and 1 |
| fBodyAccMag-std | numeric  | between -1 and 1 |
| fBodyBodyAccJerkMag-mean | numeric  | between -1 and 1 |
| fBodyBodyAccJerkMag-std | numeric  | between -1 and 1 |
| fBodyBodyGyroMag-mean | numeric  | between -1 and 1 |
| fBodyBodyGyroMag-std | numeric  | between -1 and 1 |
| fBodyBodyGyroJerkMag-mean | numeric  | between -1 and 1 |
| fBodyBodyGyroJerkMag-std | numeric  | between -1 and 1 |
