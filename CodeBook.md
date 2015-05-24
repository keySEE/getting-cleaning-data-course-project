Title: "Codebook for script: run_analysis.R"
Author: Sergey Kosenko (keySEE)
Date: 24/05/2015

Site with original data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data set for course project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Information about experiment described into 'README.txt' into core folder 'UCI HAR Dataset'
Information about original source variables described into 'feature.txt' into core folder 'UCI HAR Dataset'
Information about the variables in source data set described into file 'features_info.txt' into core folder 'UCI HAR Dataset'

The working of the script 'run_analysis.R' detailed in README.md 

Result of work the script is 'step5.txt' file in current working directory
which include tidy data set with the average of each variable (mean values and standard deviations) for each activity and each subject.

List of variables in final output data set:
 [1] "subject"                                        
 [2] "activity"                                       
 [3] "timeBodyAccelerometer-mean()-X"                 
 [4] "timeBodyAccelerometer-mean()-Y"                 
 [5] "timeBodyAccelerometer-mean()-Z"                 
 [6] "timeBodyAccelerometer-std()-X"                  
 [7] "timeBodyAccelerometer-std()-Y"                  
 [8] "timeBodyAccelerometer-std()-Z"                  
 [9] "timeGravityAccelerometer-mean()-X"              
[10] "timeGravityAccelerometer-mean()-Y"             
[11] "timeGravityAccelerometer-mean()-Z"              
[12] "timeGravityAccelerometer-std()-X"               
[13] "timeGravityAccelerometer-std()-Y"               
[14] "timeGravityAccelerometer-std()-Z"               
[15] "timeBodyAccelerometerJerk-mean()-X"             
[16] "timeBodyAccelerometerJerk-mean()-Y"             
[17] "timeBodyAccelerometerJerk-mean()-Z"             
[18] "timeBodyAccelerometerJerk-std()-X"              
[19] "timeBodyAccelerometerJerk-std()-Y"              
[20] "timeBodyAccelerometerJerk-std()-Z"              
[21] "timeBodyGyroscope-mean()-X"                     
[22] "timeBodyGyroscope-mean()-Y"                     
[23] "timeBodyGyroscope-mean()-Z"                     
[24] "timeBodyGyroscope-std()-X"                      
[25] "timeBodyGyroscope-std()-Y"                      
[26] "timeBodyGyroscope-std()-Z"                      
[27] "timeBodyGyroscopeJerk-mean()-X"                 
[28] "timeBodyGyroscopeJerk-mean()-Y"                 
[29] "timeBodyGyroscopeJerk-mean()-Z"                 
[30] "timeBodyGyroscopeJerk-std()-X"                  
[31] "timeBodyGyroscopeJerk-std()-Y"                  
[32] "timeBodyGyroscopeJerk-std()-Z"                  
[33] "timeBodyAccelerometerMagnitude-mean()"          
[34] "timeBodyAccelerometerMagnitude-std()"           
[35] "timeGravityAccelerometerMagnitude-mean()"       
[36] "timeGravityAccelerometerMagnitude-std()"        
[37] "timeBodyAccelerometerJerkMagnitude-mean()"      
[38] "timeBodyAccelerometerJerkMagnitude-std()"       
[39] "timeBodyGyroscopeMagnitude-mean()"              
[40] "timeBodyGyroscopeMagnitude-std()"               
[41] "timeBodyGyroscopeJerkMagnitude-mean()"          
[42] "timeBodyGyroscopeJerkMagnitude-std()"           
[43] "frequencyBodyAccelerometer-mean()-X"            
[44] "frequencyBodyAccelerometer-mean()-Y"            
[45] "frequencyBodyAccelerometer-mean()-Z"            
[46] "frequencyBodyAccelerometer-std()-X"             
[47] "frequencyBodyAccelerometer-std()-Y"             
[48] "frequencyBodyAccelerometer-std()-Z"             
[49] "frequencyBodyAccelerometerJerk-mean()-X"        
[50] "frequencyBodyAccelerometerJerk-mean()-Y"        
[51] "frequencyBodyAccelerometerJerk-mean()-Z"        
[52] "frequencyBodyAccelerometerJerk-std()-X"         
[53] "frequencyBodyAccelerometerJerk-std()-Y"         
[54] "frequencyBodyAccelerometerJerk-std()-Z"         
[55] "frequencyBodyGyroscope-mean()-X"                
[56] "frequencyBodyGyroscope-mean()-Y"                
[57] "frequencyBodyGyroscope-mean()-Z"                
[58] "frequencyBodyGyroscope-std()-X"                 
[59] "frequencyBodyGyroscope-std()-Y"                 
[60] "frequencyBodyGyroscope-std()-Z"                 
[61] "frequencyBodyAccelerometerMagnitude-mean()"     
[62] "frequencyBodyAccelerometerMagnitude-std()"      
[63] "frequencyBodyAccelerometerJerkMagnitude-mean()" 
[64] "frequencyBodyAccelerometerJerkMagnitude-std()"  
[65] "frequencyBodyGyroscopeMagnitude-mean()"         
[66] "frequencyBodyGyroscopeMagnitude-std()"          
[67] "frequencyBodyGyroscopeJerkMagnitude-mean()"     
[68] "frequencyBodyGyroscopeJerkMagnitude-std()"