Getting and Cleaning Data Course Project
==================================================================

The file 'run_analysis.R' contains the code for Getting and Cleaning Data Course Project. The purpose for the code is to organize the data into tidy data.

The beginning data source for the project is the Human Activity Recognition Using Smartphones Dataset from UCI Machine Learning Repository on this URL.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

IMPORTANT: For the code to work, there is a needs to set working directory to the location of UCI HAR Dataset folder before running.

The code does the following:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For additional details about variables, please refer to the CODEBOOK.