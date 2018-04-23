CODEBOOK
This codebook describes the project variable as well as the process
## Data\
The data that use in this project is called **Human Activity Recognition Using Smartphones Data Set**
The data collected from the accelerometers from the Samsung Galaxy S smartphones can be download by the link below\
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
`In this project we combine both test and train data to create a single data set`

for more information about this data you can visit\
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Proces procedure\
1. Download data from provided URL above then unzip.
1. Load `dplyr` package into the project.
1. Set work directory to the data folder.
1. Import each train and test data set.
1. 

## Final tidy daya variables\ 

**Identifier** \
 * `subject_id` : Volunteers ID (1-30)
 * `activity` : Six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 
**Measured variables**\
prefix *time* refer to *time domain signals*\
prefix *frequency* refer to *frequency domain signals*\

 * `timeBodyAccelerometerMeanX`
 * `timeBodyAccelerometerMeanY`
 * `timeBodyAccelerometerMeanZ`
 * `timeBodyAccelerometerStandardDeviationX`
 * `timeBodyAccelerometerStandardDeviationY`
 * `timeBodyAccelerometerStandardDeviationZ`
 * `timeGravityAccelerometerMeanX`
 * `timeGravityAccelerometerMeanY`
 * `timeGravityAccelerometerMeanZ`
 * `timeGravityAccelerometerStandardDeviationX`
 * `timeGravityAccelerometerStandardDeviationY`
 * `timeGravityAccelerometerStandardDeviationZ`
 * `timeBodyAccelerometerJerkMeanX`
 * `timeBodyAccelerometerJerkMeanY`
 * `timeBodyAccelerometerJerkMeanZ`
 * `timeBodyAccelerometerJerkStandardDeviationX`
 * `timeBodyAccelerometerJerkStandardDeviationY`
 * `timeBodyAccelerometerJerkStandardDeviationZ`
 * `timeBodyGyroscopeMeanX`
 * `timeBodyGyroscopeMeanY`
 * `timeBodyGyroscopeMeanZ`
 * `timeBodyGyroscopeStandardDeviationX`
 * `timeBodyGyroscopeStandardDeviationY`
 * `timeBodyGyroscopeStandardDeviationZ`
 * `timeBodyGyroscopeJerkMeanX`
 * `timeBodyGyroscopeJerkMeanY`
 * `timeBodyGyroscopeJerkMeanZ`
 * `timeBodyGyroscopeJerkStandardDeviationX`
 * `timeBodyGyroscopeJerkStandardDeviationY`
 * `timeBodyGyroscopeJerkStandardDeviationZ`
 * `timeBodyAccelerometerMagnitudeMean`
 * `timeBodyAccelerometerMagnitudeStandardDeviation`
 * `timeGravityAccelerometerMagnitudeMean`
 * `timeGravityAccelerometerMagnitudeStandardDeviation`
 * `timeBodyAccelerometerJerkMagnitudeMean`
 * `timeBodyAccelerometerJerkMagnitudeStandardDeviation`
 * `timeBodyGyroscopeMagnitudeMean`
 * `timeBodyGyroscopeMagnitudeStandardDeviation`
 * `timeBodyGyroscopeJerkMagnitudeMean`
 * `timeBodyGyroscopeJerkMagnitudeStandardDeviation`
 * `frequencyBodyAccelerometerMeanX`
 * `frequencyBodyAccelerometerMeanY`
 * `frequencyBodyAccelerometerMeanZ`
 * `frequencyBodyAccelerometerStandardDeviationX`
 * `frequencyBodyAccelerometerStandardDeviationY`
 * `frequencyBodyAccelerometerStandardDeviationZ`
 * `frequencyBodyAccelerometerJerkMeanX`
 * `frequencyBodyAccelerometerJerkMeanY`
 * `frequencyBodyAccelerometerJerkMeanZ`
 * `frequencyBodyAccelerometerJerkStandardDeviationX`
 * `frequencyBodyAccelerometerJerkStandardDeviationY`
 * `frequencyBodyAccelerometerJerkStandardDeviationZ`
 * `frequencyBodyGyroscopeMeanX`
 * `frequencyBodyGyroscopeMeanY`
 * `frequencyBodyGyroscopeMeanZ`
 * `frequencyBodyGyroscopeStandardDeviationX`
 * `frequencyBodyGyroscopeStandardDeviationY`
 * `frequencyBodyGyroscopeStandardDeviationZ`
 * `frequencyBodyAccelerometerMagnitudeMean`
 * `frequencyBodyAccelerometerMagnitudeStandardDeviation`
 * `frequencyBodyAccelerometerJerkMagnitudeMean`
 * `frequencyBodyAccelerometerJerkMagnitudeStandardDeviation`
 * `frequencyBodyGyroscopeMagnitudeMean`
 * `frequencyBodyGyroscopeMagnitudeStandardDeviation`
 * `frequencyBodyGyroscopeJerkMagnitudeMean`
 * `frequencyBodyGyroscopeJerkMagnitudeStandardDeviation`
