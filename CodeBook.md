# Code Book

## Study design and data 
 The data used for the analysis is from the "Human Activity Recognition Using Smartphones" dataset. This database was built from the recordings of 30 volunteers (within an age of 19-48 years), each performing activities of daily living (ADL) while carrying a waist-mounted smartphone (Samsung Galaxy S II) with embedded inertial sensors (accelerometer and gyroscope).

The ADL performed were of six types:

  - Walking
  - Walking upstairs
  - Walking downstairs
  - Sitting
  - Standing
  - Laying

The experiments were video-recorded to label the data manually.
The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


The data captured involved a 3-axial linear acceleration and 3-axial angular velocity measured at a constant rate of 50Hz (time domain signals). Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

From the original variables in the experiment (561), only those containing mean and standard deviation values were selected (79).
Then, the mean of each variable per activity per subject was calculated, generating the final data frame in the finaldataset.txt file

## Variables

### Names
- "meantBodyAccmeanX": The mean of the mean body acceleration time domain signal on the x axis 
- "meantBodyAccmeanY": The mean of the mean body acceleration time domain signal on the y axis
- "meantBodyAccmeanZ": The mean of the mean body acceleration time domain signal on the z axis
- "meantBodyAccstdX": The mean of the standard deviation of the body acceleration time domain signal on the x axis
- "meantBodyAccstdY": The mean of the standard deviation of the body acceleration time domain signal on the y axis
- "meantBodyAccstdZ": The mean of the standard deviation of the body acceleration time domain signal on the z axis
- "meantGravityAccmeanX": The mean of the mean gravity acceleration time domain signal on the x axis
- "meantGravityAccmeanY": The mean of the mean gravity acceleration time domain signal on the y axis
- "meantGravityAccmeanZ": The mean of the mean gravity acceleration time domain signal on the z axis
- "meantGravityAccstdX": The mean of the standard deciation of the gravity acceleration time domain signal on the x axis
- "meantGravityAccstdY": The mean of the standard deciation of the gravity acceleration time domain signal on the y axis
- "meantGravityAccstdZ": The mean of the standard deciation of the gravity acceleration time domain signal on the z axis
- "meantBodyAccJerkmeanX": The mean of the mean body acceleration time domain Jerk signal on the x axis
- "meantBodyAccJerkmeanY": The mean of the mean body acceleration time domain Jerk signal on the y axis
- "meantBodyAccJerkmeanZ": The mean of the mean body acceleration time domain Jerk signal on the z axis
- "meantBodyAccJerkstdX": The mean of the standard deviation of the body acceleration time domain Jerk signal on the x axis
- "meantBodyAccJerkstdY": The mean of the standard deviation of the body acceleration time domain Jerk signal on the y axis
- "meantBodyAccJerkstdZ": The mean of the standard deviation of the body acceleration time domain Jerk signal on the z axis
- "meantBodyGyromeanX": The mean of the mean body angular velocity time domain signal on the x axis
- "meantBodyGyromeanY": The mean of the mean body angular velocity time domain signal on the y axis
- "meantBodyGyromeanZ": The mean of the mean body angular velocity time domain signal on the z axis
- "meantBodyGyrostdX": The mean of the standard deviation of the body angular velocity time domain signal on the x axis
- "meantBodyGyrostdY": The mean of the standard deviation of the body angular velocity time domain signal on the y axis
- "meantBodyGyrostdZ": The mean of the standard deviation of the body angular velocity time domain signal on the z axis
- "meantBodyGyroJerkmeanX": The mean of the mean body angular velocity time domain Jerk signal on the x axis
- "meantBodyGyroJerkmeanY": The mean of the mean body angular velocity time domain Jerk signal on the y axis
- "meantBodyGyroJerkmeanZ": The mean of the mean body angular velocity time domain Jerk signal on the z axis
- "meantBodyGyroJerkstdX": The mean of the standard deviation of the body angular velocity time domain Jerk signal on the x axis
- "meantBodyGyroJerkstdY": The mean of the standard deviation of the body angular velocity time domain Jerk signal on the y axis
- "meantBodyGyroJerkstdZ": The mean of the standard deviation of the body angular velocity time domain Jerk signal on the z axis
- "meantBodyAccMagmean": The mean of the mean three-dimensional magnitude of the body acceleration time domain signal
- "meantBodyAccMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body acceleration time domain signal
- "meantGravityAccMagmean": The mean of the mean three-dimensional magnitude of the body angular velocity time domain signal
- "meantGravityAccMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body angular velocity time domain signal
- "meantBodyAccJerkMagmean": The mean of the mean three-dimensional magnitude of the body acceleration time domain Jerk signal
- "meantBodyAccJerkMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body acceleration time domain Jerk signal
- "meantBodyGyroMagmean": The mean of the mean three-dimensional magnitude of the body angular velocity time domain signal
- "meantBodyGyroMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body angular velocity time domain signal
- "meantBodyGyroJerkMagmean": The mean of the mean three-dimensional magnitude of the body angular velocity time domain Jerk signal
- "meantBodyGyroJerkMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body angular velocity time domain Jerk signal
- "meanfBodyAccmeanX": The mean of the mean body acceleration frequency domain signal on the x axis
- "meanfBodyAccmeanY": The mean of the mean body acceleration frequency domain signal on the y axis
- "meanfBodyAccmeanZ": The mean of the mean body acceleration frequency domain signal on the z axis
- "meanfBodyAccstdX": The mean of the standard deviation of the body acceleration frequency domain signal on the x axis
- "meanfBodyAccstdY": The mean of the standard deviation of the body acceleration frequency domain signal on the y axis
- "meanfBodyAccstdZ": The mean of the standard deviation of the body acceleration frequency domain signal on the z axis
- "meanfBodyAccmeanFreqX": The mean of the mean frequency of the body acceleration frequency domain signal on the x axis
- "meanfBodyAccmeanFreqY": The mean of the mean frequency of the body acceleration frequency domain signal on the y axis
- "meanfBodyAccmeanFreqZ": The mean of the mean frequency of the body acceleration frequency domain signal on the z axis
- "meanfBodyAccJerkmeanX": The mean of the mean body acceleration frequency domain Jerk signal on the x axis
- "meanfBodyAccJerkmeanY": The mean of the mean body acceleration frequency domain Jerk signal on the y axis
- "meanfBodyAccJerkmeanZ": The mean of the mean body acceleration frequency domain Jerk signal on the z axis
- "meanfBodyAccJerkstdX": The mean of the standard deviation of the body acceleration frequency domain Jerk signal on the x axis
- "meanfBodyAccJerkstdY": The mean of the standard deviation of the body acceleration frequency domain Jerk signal on the y axis
- "meanfBodyAccJerkstdZ": The mean of the standard deviation of the body acceleration frequency domain Jerk signal on the z axis
- "meanfBodyAccJerkmeanFreqX": The mean of the mean frequency of the body acceleration frequency domain Jerk signal on the x axis
- "meanfBodyAccJerkmeanFreqY": The mean of the mean frequency of the body acceleration frequency domain Jerk signal on the y axis
- "meanfBodyAccJerkmeanFreqZ": The mean of the mean frequency of the body acceleration frequency domain Jerk signal on the z axis
- "meanfBodyGyromeanX": The mean of the mean body angular velocity frequency domain signal on the x axis
- "meanfBodyGyromeanY": The mean of the mean body angular velocity frequency domain signal on the y axis
- "meanfBodyGyromeanZ": The mean of the mean body angular velocity frequency domain signal on the z axis
- "meanfBodyGyrostdX": The mean of the standard deviation of the body angular velocity frequency domain signal on the x axis
- "meanfBodyGyrostdY": The mean of the standard deviation of the body angular velocity frequency domain signal on the y axis
- "meanfBodyGyrostdZ": The mean of the standard deviation of the body angular velocity frequency domain signal on the z axis
- "meanfBodyGyromeanFreqX": The mean of the mean frequency of the body angular velocity frequency domain signal on the x axis
- "meanfBodyGyromeanFreqY": The mean of the mean frequency of the body angular velocity frequency domain signal on the y axis
- "meanfBodyGyromeanFreqZ": The mean of the mean frequency of the body angular velocity frequency domain signal on the z axis
- "meanfBodyAccMagmean": The mean of the mean three-dimensional magnitude of the body acceleration frequency domain signal
- "meanfBodyAccMagstd": The mean of the standarddeviation of the three-dimensional magnitude of the body acceleration frequency domain signal
- "meanfBodyAccMagmeanFreq": The mean of the mean frequency of the three-dimensional magnitude of the body acceleration frequency domain signal
- "meanfBodyBodyAccJerkMagmean": The mean of the mean three-dimensional magnitude of the body acceleration frequency domain Jerk signal
- "meanfBodyBodyAccJerkMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body acceleration frequency domain Jerk signal
- "meanfBodyBodyAccJerkMagmeanFreq": The mean of the mean frequency of the three-dimensional magnitude of the body acceleration frequency domain Jerk signal
- "meanfBodyBodyGyroMagmean": The mean of the mean three-dimensional magnitude of the body body angular velocity frequency domain signal
- "meanfBodyBodyGyroMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body body angular velocity frequency domain signal
- "meanfBodyBodyGyroMagmeanFreq": The mean of the mean frequency of the three-dimensional magnitude of the body body angular velocity frequency domain signal
- "meanfBodyBodyGyroJerkMagmean": The mean of the mean three-dimensional magnitude of the body body angular velocity frequency domain Jerk signal
- "meanfBodyBodyGyroJerkMagstd": The mean of the standard deviation of the three-dimensional magnitude of the body body angular velocity frequency domain Jerk signal
- "meanfBodyBodyGyroJerkMagmeanFreq": The mean of the mean frequency of the three-dimensional magnitude of the body body angular velocity frequency domain Jerk signal
 
 
 
 

