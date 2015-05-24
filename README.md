## Getting and Cleaning Data - Course Project

#### Summary

This repository includes a single script, run_analysis.R, that merges data from the Human Activity Recognition Using Smartphones Data Set project at the UCI Machine Learning Repository to produce averages values per user per activity for the dataset's mean and standard deviation features.

The script run_analysis.R in detail does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Usage

Set the working directory to the folder containing the datasets. Run the script run_analysis.R that produces the output file tidy_data.txt.
