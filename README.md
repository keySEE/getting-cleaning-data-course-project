===================================================================================
## Description R script: run_analysis.R
===================================================================================
 I'm sorry for my English. It's not my native language. I only teach now :). keySEE
===================================================================================
Script is written on:
R version 3.2.0 (2015-04-16) -- "Full of Ingredients"
Platform: i386-w64-mingw32/i386 (32-bit)
OS: Windows 8
===================================================================================
For work the script is required loading the library "dplyr"
===================================================================================
Before the script start own work, will be make checking of existing data set.
If data set not exist - it will be downloaded before script start your work

This script takes from dataset "UCI HAR Dataset" experiments data of 30 volunteers braked into two groups  
After start the script completes next operations:
* STEP 0: 
- Loading needed library: dplyr
* STEP 1: 
- loading training and test sets into variables: "data_training", "data_test".
- loading information about subjects which makes experiments into variables: "subject_training", "subject_test"
- loading information about numbers of activity into variables: "activity_training", "activity_test"
- ОБЪЕДИНЕНИЕ corresponding information from training and test sets into variables: "result_data", "subject_data", "activity_data"
- loading information about variables used into experiments into variable: "feature_data"
- assigning names of variables from "feature_data" to data set "result_data"
* STEP 2:
- extracting from data set "result_data" only measurements on the mean and standard deviation for each measurement into "mean_std_data"
- assigning names of variables to "activity_data" and "subject_data"
- ОБЪЕДИНЕНИЕ data frames "mean_std_data", "activity_data", "subject_data" into one "final_data"
* STEP 3:
- loading information about labels (types of activity) into variables: "activity_label"
- adding descriptive names of activities into "final_data" set
* STEP 4:
- finding non-descriptive variable names and substituting on descriptive variable names 
* STEP5:
- create independent data set with the average of each variable for each activity and each subject
- ordering information into data set by "subject"
- writing get dataset into file "step5.txt"