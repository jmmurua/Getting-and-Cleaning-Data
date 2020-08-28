# Final project of "Getting and Cleaning Data"

## The repository includes the following files:
### Main files
 1. README.md: Explains each file, justifies the tidy nature of the final data set, and...
 2. finaldataset.txt: The file containing the final data set
 3. run_analysis.R: A script that contains the analysis necesary for obtaining the final data set.
 4. CodeBook.md: A file explaining the experimental design, and the variables of the input data and their units
 
### Files required in the run_analysis.R script
 6. features.txt: Contains all the names of the quantitative variables (561) common for the training and test sets
 5. X_test.txt: The test set, containing measurments for the 561 variables specified in the features.txt file
 5. X_train.txt: The training set, containing measurments for the 561 variables specified in the features.txt file
 6. test_labels.txt: One column containing indexes (1-6) that represent the activity performed for a given subject for the test set
 7. train_labels.txt: One column containing indexes (1-6) that represent the activity performed for a given subject for the training set
 8. subject_test.txt: One column containing IDs that represent a specific subject performing a given activity for the test set
 9. subject_train.txt: One column containing IDs that represent a specific subject performing a given activity for the train set
 10. activity_labels.txt: Links the name of each activity with the indexes on the labels files

## Analysis
The analysis in the run_analysis.R script follows these steps.
 1. Merging the training and the test data sets.
    - Each data set is loaded. They consist of purely quantitative measurments without any column or row names  
    - The activity lables and the subject IDs for each data set are loaded  
    - Each data set is binded with its specific activity labels and subject IDs  
    - A variable indicating the ID of the data set is included in each data set ("train" or "test")  
    - The data sets are binded one on the top of the other  
 2. Selecting only the measurments on the mean and standard deviation of each measurment.
    - The "features" file containing the names of the measurments is loaded  
    - The names containing "mean" or "sd" are selected and used to create a vector with the indexes of each  
    - The vector of indexed is used to select the columns of the recently merged data set  
 3. Renaming the activities and variables with descriptive names
    - The file containing the activity labels IDs is loaded  
    - The names of the activities are set to lower cases and low dashes are replaced with blank spaces  
    - The names of the variables in the merged set are edited without any non-character symbol  
    - An optional edition is left for the further modification of variable names resulting in ultra descriptive and long names  
 4. Creating a new dataset with the mean of each variable for each activity and each subject.
    - The data set is separated by activity and subject  
    - The mean of each column is calculated for each of resulting data sets  
    - The data sets are re-integrated  
    - Column names are re-edited specifying the "mean" character of the new data set  
    - The final data set is exported  
    
## Why the final data set is tidy

- Each column represents a variable: They contain values that measure the same underlying attribute (e.g. activity)
- Each row represents an obserbation: They contain all values meassured on the same unit (a specific activity performed by one subject)
- The entire data constitutes a single table that represents as single observational unit

## Why the variable names are descriptive

First, the variable names that appear in the final data set are not in they full extension. They have been left in an abbreviated form similar to the original features names. These was decided to occupy less space per column, which would facilitate the visualization of the data set.

With that beeing said, each column name is comsposed by the short form of several words one next to the other (no blank spaces) as specified in the CodeBook.md file. Each word composing a column name has its first letter in capital form to facilitate their recognition. No extrange characters had been introduced to avoid the non-intuitive abbrebiation.
Finally, an optional step was left in the run_analysis.R script that allows for the furthur modification of the column names if the user wants to make them more descriptive (but longer).
