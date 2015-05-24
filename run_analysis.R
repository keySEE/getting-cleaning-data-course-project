#DESCRIPTION R script: run_analysis.R that does the following: 
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# 'features_info.txt': Shows information about the variables used on the feature vector.
# 'features.txt': List of all features.

# 'activity_labels.txt': Links the class labels with their activity name.

# 'train/X_train.txt': Training set.
# 'test/X_test.txt': Test set.

# 'train/y_train.txt': Training labels.
# 'test/y_test.txt': Test labels.

# 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
# 'train/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

# include librarys
library(dplyr)

# Checking of existing the dataset and download if it not exist.
if(!file.exists("./UCI HAR Dataset")){
	print("Data set not exists now and will be downloaded.")
	fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	download.file(fileUrl,destfile="./Dataset.zip",method="auto")
	unzip(zipfile="./Dataset.zip")
	print("Data set was downloaded. Start main work")
} else {
	print("Data set already exists. Start main work")
}

# STEP 1 - Merges the training and the test sets to create one data set.
core_folder <- file.path("UCI HAR Dataset")

# Training and test sets
data_training <- read.table(file.path(core_folder, "train" , "X_train.txt"))
data_test <- read.table(file.path(core_folder, "test" , "X_test.txt"))

# Training and test subject
subject_training <- read.table(file.path(core_folder, "train" , "subject_train.txt"))
subject_test <- read.table(file.path(core_folder, "test" , "subject_test.txt"))

# Training and test labels of activity
activity_training <- read.table(file.path(core_folder, "train" , "y_train.txt"))
activity_test <- read.table(file.path(core_folder, "test" , "y_test.txt"))

# Merges data training and test sets
result_data <- rbind(data_training, data_test)
subject_data <- rbind(subject_training, subject_test)
activity_data <- rbind(activity_training, activity_test)

# Set names of column for variables
feature_data <- read.table(file.path(core_folder, "features.txt"))
names(result_data)<- feature_data$V2

print("STEP 1: completed")


# STEP 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

mean_std_feature_data <- grep("(mean|std)\\(\\)", feature_data$V2)
mean_std_data <- subset(result_data, select = mean_std_feature_data)

# Adding data subjects and activities and getting final data
names(activity_data) <- c("activity")
names(subject_data) <- c("subject")
final_data <- cbind(mean_std_data, activity_data, subject_data)

print("STEP 2: completed")


# STEP 3 - Uses descriptive activity names to name the activities in the data set

activity_label <- read.table(file.path(core_folder, "activity_labels.txt"))
final_data$activity <- factor(final_data$activity, labels = activity_label$V2)

print("STEP 3: completed")


# STEP 4 - Appropriately labels the data set with descriptive variable names. 

names(final_data) <- gsub("^t", "time", names(final_data))
names(final_data) <- gsub("^f", "frequency", names(final_data))
names(final_data) <- gsub("Acc", "Accelerometer", names(final_data))
names(final_data) <- gsub("Gyro", "Gyroscope", names(final_data))
names(final_data) <- gsub("Mag", "Magnitude", names(final_data))
names(final_data) <- gsub("BodyBody", "Body", names(final_data))

print("STEP 4: completed")


# STEP 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

average_final_data <- aggregate(. ~ subject + activity, final_data, mean)		#'data.frame':   180 obs. of  68 variables:
average_final_data <- average_final_data[order(average_final_data$subject), ]
write.table(average_final_data, file = "step5.txt", row.name = FALSE)

print("STEP 5: completed. Tidy data set completed and saved into file: step5.txt. Script ended own work.")