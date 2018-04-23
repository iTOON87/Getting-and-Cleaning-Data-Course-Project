#Load dplyr package.
library(dplyr)

#Download necessary data file from provided link (In the course work page).
if (!file.exists("./data")){dir.create("./data")}
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl, destfile="./data/project.zip")
  
if (!file.exists("./data/UCI HAR Dataset")) {
  unzip("./data/project.zip",exdir="./data")
}

#Set work directory to data.
setwd("./data")

############################
#Step 0
#Read data file.
############################

# Read test data.
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Read training data.
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Read features and activity_labels.
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Mapping Column name.
colnames(test_set) = features[,2]; 
colnames(train_set) = features[,2]; 

colnames(train_labels) = "activity"
colnames(test_labels) = "activity"

colnames(test_subjects) = "subject_id"
colnames(train_subjects) = "subject_id"

############################
#Step 1
#Merges the training and the test sets to create one data set.
############################
train_data_set <- cbind(train_subjects, train_labels, train_set)
test_data_set<- cbind(test_subjects, test_labels, test_set)
all_data_set <- rbind(train_data_set, test_data_set)

############################
#Step 2
#Extracts only the measurements on the mean and standard deviation for each measurement.
############################
#First we select whick column(data) that we will use by using grepl (result will return in boolean then store in target_measurement.)
target_measurement <- grepl("activity|subject_id|.*mean|.*std", colnames(all_data_set))

#Exclude meanFreq from the data.
nottarget_measurement <- grepl(".*meanFreq()", colnames(all_data_set))
selected_measurement <- xor(target_measurement, nottarget_measurement)

#Assign resutl in target_measurement_data (now we have the data set that contain mean and standard deviation for each measurement.)
target_measurement_data <- all_data_set[,selected_measurement]



############################
#Step 3
#Uses descriptive activity names to name the activities in the data set
############################

#Mapping factor name.
target_measurement_data$activity <- factor(target_measurement_data$activity, levels = activities[, 1], labels = activities[, 2])



############################
#Step 4
#Uppropriately labels the data set with descriptive variable names.
############################


#Create a temporary object to contain variable names (Column names).
tmp_colnames <- colnames(target_measurement_data) 

#Change names.
tmp_colnames <- gsub("\\()","",tmp_colnames)
tmp_colnames <- gsub("^(t)","time",tmp_colnames)
tmp_colnames <- gsub("^(f)","frequency",tmp_colnames)
tmp_colnames <- gsub("Acc","Accelerometer",tmp_colnames)
tmp_colnames <- gsub("Gyro","Gyroscope",tmp_colnames)
tmp_colnames <- gsub("Mag","Magnitude",tmp_colnames)
tmp_colnames <- gsub("std","StandardDeviation",tmp_colnames)
tmp_colnames <- gsub("mean","Mean",tmp_colnames)
tmp_colnames <- gsub("-","",tmp_colnames)
tmp_colnames <- gsub("BodyBody","Body",tmp_colnames) #typo correct

#Mapping back to our data set
colnames(target_measurement_data) <- tmp_colnames

############################
#Step 5
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
############################

tiny_target_measurement_data <- target_measurement_data %>% group_by(subject_id,activity) %>% summarise_all(funs(mean))


#Export  data set to text file 
write.table(tiny_target_measurement_data, "tidy_data_set.txt", row.names = FALSE, quote = FALSE, sep = ",")