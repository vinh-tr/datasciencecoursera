 Code book
=====
Preprocessed data

| variable     | type          | comment  |
| ------------ | ------------- | -------- |
| subject_id     | integer      | unique individual id |
| activity     | string        | possible values: "STANDING", "SITTING", "LAYING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS" |
| \<other variables\>    | numeric        | average of the raw measurement for each individual and activity. Since the measurements were normalized, the values should be between 0 and 1. There are 66 variables (1)|

(1) They represent the mean and standard deviation of the following variables (cf. features_info.txt in the zip file for raw data):

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag
      
      
