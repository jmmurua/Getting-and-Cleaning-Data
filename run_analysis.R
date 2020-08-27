
                ###########################################
                #                                         #
                # Getting and Cleaning Data Final Project #
                #                                         # 
                ###########################################


# My working directory
setwd("C:/Users/José Manuel Murúa/Documents/Coursera/Getting and Cleaning Data")



#       Merging the training and the tests sets
#       ---------------------------------------



# Test set
test <- read.table("./data/project/UCI HAR dataset/test/X_test.txt")
dim(test) # The number of columns (561) corresponds to the features


  # Labels (of activities) for the test set
test_labels <- read.table("./data/project/UCI HAR dataset/test/y_test.txt")
dim(test_labels) # Vector identifying the activity performed

  # Subjects IDs for the test set
subject_test <- read.table("./data/project/UCI HAR dataset/test/subject_test.txt")
dim(subject_test) # Vector identifying the subject


 # Binding the test set with labels and subjects 
data.test <- cbind(test_labels, subject_test, test)
View(data.test)
names(data.test) <- c("activity", "subject", 1:561)
data.test <- cbind(set = rep("test", 2947), data.test)




# Training set
training <- read.table("./data/project/UCI HAR dataset/train/X_train.txt")
dim(training)

 # Labels (of activities) for the training set
train_labels <- read.table("./data/project/UCI HAR dataset/train/y_train.txt")
dim(train_labels)


 # Subjects IDs for the training set
subject_train <- read.table("./data/project/UCI HAR dataset/train/subject_train.txt")
dim(subject_train)

 # Binding the training set with labels and subjects 
data.train <- cbind(train_labels, subject_train, training)
View(data.train)
names(data.train) <- c("activity", "subject", 1:561)
data.train <- cbind(set = rep("train", 7352), data.train)




# Merging the training and the test sets
both <- rbind(data.train, data.test)
View(both)



#       Filtering columns and adding descriptive names
#       ----------------------------------------------


# Features
features <- read.table("./data/project/UCI HAR dataset/features.txt")
meansd <- grep("mean|std", features$V2)    # indexes of features that correspond 
                                           # only to mean or standard deviation

# Selecting columns of means and standard deviations 
both <- both[, c("set", "activity", "subject", as.character(meansd))]


# Naming activities descriptively 
activities <- read.table("./data/project/UCI HAR dataset/activity_labels.txt")

both$activity <- sub("_", " ", tolower(activities$V2[both$activity])) 


# Naming variables descriptively

     # tBodyAcc = time body acceleration signal
     # tGravAcc = time gravity acceleration signal
     # tBodyAccJerk = time body linear acceleration jerk signal
     # tBodyGyroJerk = time body angular velocity jerk signal
     # tBodyAccMag = time body linear acceleration magnitude
     # tGravityAccMag = time gravity acceleration magnitude
     # tBodyAccJerkMag = time body linear acceleration jerk magnitude
     # tBodyGyroMag = time body angular velocity magnitude
     # tBodyGyroJerkMag = time body angular velocity jerk magnitude
     # fBodyAcc-XYZ = frequency body linear acceleration
     # fBodyAccJerk-XYZ = frequency body linear acceleration jerk
     # fBodyGyro-XYZ = frequency body angular velocity
     # fBodyAccMag = frequency body linear acceleration magnitude
     # fBodyAccJerkMag = frequency body acceleration jerk magnitude
     # fBodyGyroMag = frequency body angular velocity magnitude
     # fBodyGyroJerkMag = frequency body angular velocity jerk magnitude


variables <- gsub("-", "", features$V2[meansd])
variables <- gsub("\\()", "", variables)

  # OPTIONAL: If you want more descriptive (longer) names
variables <- tolower(sub("t", "time", variables))
variables <- sub("acc", "acceleration", variables)
variables <- sub("f", "frequency", variables)
variables <- sub("gyro", "angularvelocity", variables)
variables <- sub("mag", "magnitude", variables)


# Renaming columns
names(both) <- c("set", "activity", "subject", variables)




#       Creating summary data set
#       -------------------------


# Separating by activity and subject
splited <- split(both, interaction(both$activity, both$subject))

# Excluding factor variables for each data set 
splited <- lapply(splited, "[", c(-1, -2, -3))

# Calculating the means of each column for each data set
 means <- sapply(splited, colMeans)
 
# Transposing the matrix
 means <- t(means)
 
# Coercing to a data frame 
 means <- as.data.frame(means)
 
# Reincorporate the activity and subject columns 
 means <- cbind(activity = sapply(strsplit(rownames(means), "\\."), "[[", 1), 
          subject = sapply(strsplit(rownames(means), "\\."), "[[", 2),
          means)
 
# Renaming rows
row.names(means) <- 1:length(means$tBodyAccmeanX)
 
# Adding "mean" to names of quantitative columns
 names(means) <- c("activity", "subject", 
                   paste0("mean", names(means[,c(-1, -2)])))
dim(means)
View(means)
 
# Exporting the final data set
 write.table(means, "finaldata.txt", row.names = FALSE)
