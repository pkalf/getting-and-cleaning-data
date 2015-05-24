# Code book 

This document provides information about the generated set by the script `run_analysis.R`, provided in this repository.

## Information
The script `run_analysis.R` writes one dataset `tidy_data.txt`. 

### Data set `tidy_data.txt`

The dataset `tidy_data.txt` is the result of cleaning and selecting data from data from an experiment in which measurements were collected from the accelerometer and gyroscope from the Samsung Galaxy S smartphone used by 30 subjects carrying out a variety of 6 activities. To form the dataset `tidy_data.txt`, the observations from the initial dataset were grouped by subject and activity and then aggregated using the Mean function. This yields 180 rows (30 subjects times 6 activities) and 68 columns (1 for subject, 1 for activity plus 66 aggregated features).

More information about the measurements in the raw dataset is best obtained from the website where the dataset was taken from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here follows a description of `tidy_data.txt`.

The first variable `subject` denotes the subject number that performed an activity. In total there are 30 subjects.

The second variable `activity` denotes the activity performed by the subject. There are six activites, listed here:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

The remaining of the variables are the following:

* timeBodyAccMeanX     
* timeBodyAccMeanY        
* timeBodyAccMeanZ        
* timeBodyAccStdX         
* timeBodyAccStdY         
* timeBodyAccStdZ         
* timeGravityAccMeanX     
* timeGravityAccMeanY     
* timeGravityAccMeanZ     
* timeGravityAccStdX      
* timeGravityAccStdY      
* timeGravityAccStdZ      
* timeBodyAccJerkMeanX    
* timeBodyAccJerkMeanY    
* timeBodyAccJerkMeanZ    
* timeBodyAccJerkStdX     
* timeBodyAccJerkStdY     
* timeBodyAccJerkStdZ     
* timeBodyGyroMeanX       
* timeBodyGyroMeanY       
* timeBodyGyroMeanZ       
* timeBodyGyroStdX        
* timeBodyGyroStdY        
* timeBodyGyroStdZ        
* timeBodyGyroJerkMeanX   
* timeBodyGyroJerkMeanY   
* timeBodyGyroJerkMeanZ   
* timeBodyGyroJerkStdX    
* timeBodyGyroJerkStdY    
* timeBodyGyroJerkStdZ    
* timeBodyAccMagMean       
* timeBodyAccMagStd        
* timeGravityAccMagMean    
* timeGravityAccMagStd     
* timeBodyAccJerkMagMean   
* timeBodyAccJerkMagStd    
* timeBodyGyroMagMean      
* timeBodyGyroMagStd       
* timeBodyGyroJerkMagMean  
* timeBodyGyroJerkMagStd   
* freqBodyAccMeanX        
* freqBodyAccMeanY        
* freqBodyAccMeanZ        
* freqBodyAccStdX         
* freqBodyAccStdY         
* freqBodyAccStdZ         
* freqBodyAccJerkMeanX    
* freqBodyAccJerkMeanY    
* freqBodyAccJerkMeanZ    
* freqBodyAccJerkStdX     
* freqBodyAccJerkStdY     
* freqBodyAccJerkStdZ     
* freqBodyGyroMeanX       
* freqBodyGyroMeanY       
* freqBodyGyroMeanZ       
* freqBodyGyroStdX        
* freqBodyGyroStdY        
* freqBodyGyroStdZ        
* freqBodyAccMagMean       
* freqBodyAccMagStd        
* freqBodyAccJerkMagMean
* freqBodyAccJerkMagStd
* freqBodyGyroMagMean  
* freqBodyGyroMagStd   
* freqBodyGyroJerkMagMean
* freqBodyGyroJerkMagStd
