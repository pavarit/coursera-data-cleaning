Getting and Cleaning Data Course Project Codebook
==================================================================

The tidy data for Getting and Cleaning Data Course Project has total of 68 variables and 180 observations.

The first 2 variables are 'subject' and 'activity'. The 'subject' is the identifier of the subject in this experiment and range from 1 to 30. The 'activity' variable explain what activity was done while collecting data. It has 6 pollible values - LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS and WALKING_UPSTAIRS.

Each row of dataset represents the average of each feature data collected, by subject and activity. The features include:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Variables containing 'Acc' are acceleration data while 'Gyro' are angular velocity from gyroscope. Features are normalized and bounded within [-1,1].

Additionally, each feature has 2 variables from the signals. Each of these are computed by averaging from the beginning data set.

mean(): Mean value
std(): Standard deviation