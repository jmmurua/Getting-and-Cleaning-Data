# Final project of "Getting and Cleaning Data"

The repository includes the following files:
 1. README.md
 2. finaldataset.txt: The file containing the final data set
 3. run_analysis.R: A script that contains the analysis necesary for obtaining the final data set.
 4. CodeBook.md: A file explaining the variables of the input data and their units


## Description of the data
The data used for the analysis is from the "Human Activity Recognition Using Smartphones" dataset. 
This database was built from the recordings of 30 volunteers (within an age of 19-48 years), each performing activities of daily living (ADL) while carrying a waist-mounted smartphone (Samsung Galaxy S II) with embedded inertial sensors (accelerometer and gyroscope).

The ADL performed were of six types:
 1. Walking  
 2. Walking upstairs
 3. Walking downstairs
 4. Sitting
 5. Standing
 6. Laying

The data captured involved a 3-axial linear acceleration and 3-axial angular velocity measured at a constant rate of 50Hz.
The experiments were video-recorded to label the data manually.
The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

## Analysis
The analysis in the run_analysis.R script follows these steps.
 1. Merge the training and the test data sets.
    - Each data set is loaded. They consist of purely quantitative measurments without any column or row names  -
    - The activity lables and the subject IDs for each data set are loaded  -
    - Each data set is binded with its specific activity labels and subject IDs  -
    - A variable indicating the ID of the data set is included in each data set ("train" or "test")  -
    - The data sets are binded one on the top of the other  -
 2. Select only the measurments on the mean and standard deviation of each measurment.
    - The "features" file containing the names of the measurments is loaded  -
    - The names containing "mean" or "sd" are selected and used to create a vector with the indexes of each  -
    - The vector of indexed is used to select the columns of the recently merged data set  -
 3. Renaming the activities and variables with descriptive names
    - The file containing the activity labels IDs is loaded  -
    - The names of the activities are set to lower cases and low dashes are replaced with blank spaces  -
    - The names of the variables in the merged set are edited without any non-character symbol  -
    - An optional edition is left for the further modification of variable names resulting in ultra descriptive and long names  -
 4. Create a new dataset with the mean of each variable for each activity and each subject.
    - The data set is separated by activity and subject  -
    - The mean of each column is calculated for each of resulting data sets  -
    - The data sets are re-integrated  -
    - Column names are re-edited specifying the "mean" character of the new data set  -
    - The final data set is exported  -
