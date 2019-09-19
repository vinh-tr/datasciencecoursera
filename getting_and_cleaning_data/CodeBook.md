Getting and Cleaning Data Course Project
-----


## Description of the project
The data for the project assigment represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

## Raw data
Here are the raw data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 

## The instructions list to produce the processed data
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Code book
Preprocessed data

| variable     | type          | comment  |
| ------------ | ------------- | -------- |
| subject_id     | integer      | unique individual id |
| activity     | string        | possible values: "STANDING", "SITTING", "LAYING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS" |
| measurement    | numeric        | average of the measurement for each individual and activity. Since the measurements were normalized, the values should be between 0 and 1. There are 66 measurements*|
