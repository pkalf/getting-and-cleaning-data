# You need to set the working directory to the appropriate data location
setwd("~/r_class/getting-and-cleaning-data/data")

# Read datasets from files
subject_train <- read.table(file.path("train", "subject_train.txt"))
activity_train <- read.table(file.path("train", "y_train.txt"))
data_train <- read.table(file.path("train", "X_train.txt"))
subject_test <- read.table(file.path("test" , "subject_test.txt" ))
activity_test <- read.table(file.path("test" , "y_test.txt" ))
data_test <- read.table(file.path("test", "X_test.txt"))

# Concatenate train and test datasets
subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_train, activity_test)
data <- rbind(data_train,data_test)

# Read Features List 
features <- read.table("features.txt")

# Labeling datasets
names(subject) <- c("subject")
names(activity) <- c("activity")
names(data) <- features$V2

# Merge the training and the test sets to create one data set
final_data <- cbind(subject,activity)
final_data <- cbind(data,final_data)

# Extract only the measurements on the mean and standard deviation for each measurement
features_names <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]   
#with the backslashes we avoid taking meanfreq features
features_selection <- c(as.character(features_names), "subject", "activity")
final_data <- subset(final_data,select=features_selection)

# Use descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt",header = FALSE)
final_data$activity = factor(final_data$activity, labels=activity_labels$V2)

# Pretify labels
names(final_data) <- gsub('-mean', 'Mean', names(final_data))
names(final_data) <- gsub('-std', 'Std', names(final_data))
names(final_data) <- gsub('\\(\\)', '', names(final_data))
names(final_data) <- gsub("^(t)","time",names(final_data))
names(final_data) <- gsub("^(f)","freq",names(final_data))
names(final_data) <- gsub("BodyBody","Body",names(final_data))
names(final_data) <- gsub('-', '',names(final_data))

# Creating the second tidy data set with the average of each variable for each activity and each subject
library(plyr)
tidy_data <- aggregate(. ~subject + activity, final_data, mean)
tidy_data <- tidy_data[order(tidy_data$subject,tidy_data$activity),]
write.table(tidy_data, file = "tidy_data.txt",row.name=FALSE)