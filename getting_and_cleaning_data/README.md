
ProgrammingAssignment3: Getting and cleaning data
----
Data Science Specialization - John Hopkins University

This is a project assignment for the Data Specialiszaion (Getting and Cleaning data). It is based on data collected from the accelerometers from the Samsung Galaxy S smartphone. A  description is available at the site where the data was obtained ([link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)). A brief description is also available in the [CodeBook.md](./CodeBook.md) file


## Description of the project
The data for the project assigment represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record (in the raw data) it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Raw data
Here are the raw data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 

## The instructions list to produce the processed data
The processed data has been produced by running the script *run_analyse.R*. The data are stored in the *my_dataset_avg.csv* file.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Directory structure
```
getting_and_cleaning_data/
|-- CodeBook.md
|-- README.md
|-- run_analysis.R
```
| filename| comment | 
| --- | --- |
| [codeBook.md](./codeBook.md)| data and variables description | 
| [run_analysis.R](./run_analysis.R) | preprocessing script | 
