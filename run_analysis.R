## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement.
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names.
## 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Need to set working directory to the location of UCI HAR Dataset folder before running

library(dplyr)

##Read all relavant data files
setwd("UCI HAR Dataset/train")

subjtrain <- read.table("subject_train.txt", colClasses = "numeric")
xtrain <- read.table("X_train.txt", colClasses = "numeric")
ytrain <- read.table("y_train.txt", colClasses = "numeric")

setwd("..")
setwd("test")

subjtest <- read.table("subject_test.txt", colClasses = "numeric")
xtest <- read.table("X_test.txt", colClasses = "numeric")
ytest <- read.table("y_test.txt", colClasses = "numeric")

setwd("..")

actlabel <- read.table("activity_labels.txt", colClasses = "character")
features <- read.table("features.txt", colClasses = "character")

##Bind data together
alltrain <- cbind(subjtrain, ytrain, xtrain)
alltest <- cbind(subjtest, ytest, xtest)
dt <- rbind(alltrain, alltest)
colnames(dt) <- c("subject", "activity", features[, 2])

##Extract only columns with mean or std data
dtmeanstd <- dt[, c("subject", "activity", grep("mean\\(\\)|std\\(\\)", features[, 2], value = TRUE))]

##Replace activity number with activity names
for(i in 1:length(dtmeanstd$activity)) {
    dtmeanstd$activity[i] <- actlabel[dtmeanstd$activity[i], 2]
}

#Create tidy data
dttidy <- dtmeanstd %>% group_by(subject, activity) %>% summarize_each(funs(mean))

##Create txt file
write.table(dttidy, file = "tidy data.txt", row.names = FALSE)