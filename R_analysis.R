

# 0 - Preliminary work

# 0.1 - CLEAN ENVIRONEMENT

rm(list = ls())


# 0.2 - Download dataset

File_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("UCI HAR Dataset")){download.file(File_URL, "UCI_dataset.zip", mode = "wb")}

# 0.3 - Unzip File

if (!file.exists("UCI HAR Dataset")) {unzip("UCI_dataset.zip")}

# 0.4 - Set Working Directory

setwd("UCI HAR Dataset")


# 1 - Merges the training and the test sets to create one data set

# 1.1 - LOAD TRAIN DATASET

dftrain_value <- read.table("train/X_train.txt", header = FALSE)

dftrain_subject <- read.table("train/subject_train.txt")

dftrain_activities <- read.table("train/y_train.txt")

# 1.2 - LOAD TRAIN DATASET

dftest_value <- read.table("test/X_test.txt", header = FALSE)

dftest_subject <- read.table("test/subject_test.txt")

dftest_activities <- read.table("test/y_test.txt")


# 1.3 - Rename Columns for subject and activities

colnames(dftest_subject)     <- c("subject_id")
colnames(dftest_activities)  <- c("activity_id")

colnames(dftrain_subject)    <- c("subject_id")
colnames(dftrain_activities) <- c("activity_id")


# 1.4 - Load features name

df_features <- read.table("features.txt", header = FALSE)

df_features_2 <- as.vector(df_features$V2)

# 1.5 - ASSIGN VARIABLE NAMES TO TEST VALUES DATA SET

names(dftest_value) <- df_features_2

# 1.6 - ASSIGN VARIABLE NAMES TO TRAIN VALUE DATA SET

names(dftrain_value) <- df_features_2

# 1.7 - MERGE TEST AND TRAIN DATASET

dftest_all  <- cbind(dftest_subject, dftest_activities, dftest_value)

dftrain_all <- cbind(dftrain_subject, dftrain_activities, dftrain_value)

df_all <- rbind(dftest_all, dftrain_all)

# 1.8 - REMOVE UNNECESSARY FILES

rm(dftest_activities, dftest_subject, dftest_value, dftest_all)

rm(dftrain_activities, dftrain_subject, dftrain_value, dftrain_all)



# 2 - Extracts only the measurements on the mean and standard deviation for each measurement

df_mean_sd <- df_all[,grep("subject_id|activity_id|mean|std", names(df_all), value=TRUE)]



# 3 - Uses descriptive activity names to name the activities in the data set

df_activities_label <- read.table("activity_labels.txt")

df_mean_sd$activity_id <- factor(df_mean_sd$activity_id, levels = df_activities_label$V1, labels = df_activities_label$V2)


# 4 - Appropriately labels the data set with descriptive variable names.

df_colnames <- names(df_mean_sd)

# 4.1 - Remove special characters and duplicated names

df_colnames <- gsub("\\(\\)", "",  df_colnames)

df_colnames <- gsub("-", "", df_colnames)

df_colnames <- gsub("BodyBody", "Body", df_colnames)


# 4.2 Use proper variable names

df_colnames <- gsub("^t", "TimeDomain", df_colnames)

df_colnames <- gsub("^f", "FrequencyDomain", df_colnames)

df_colnames <- gsub("Acc", "Accelerometer", df_colnames)

df_colnames <- gsub("Gyro", "Gyroscope", df_colnames)

df_colnames <- gsub("Mag", "Magnitude", df_colnames)

df_colnames <- gsub("mean", "Mean", df_colnames)

df_colnames <- gsub("std", "StanDev", df_colnames)

names(df_mean_sd) <- df_colnames


# 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# 5.1 - Create tidy data set

df_tidy <- melt(df_mean_sd, id = c("subject_id", "activity_id"))

# 5.2 - Average of each variable for each activity and each subject.

df_tidy <- dcast(df_tidy, subject_id + activity_id ~ variable,fun.aggregate =  mean)

# 5.3 - Write data

write.table(df_tidy, "tidy_data.txt", row.names = FALSE, quote = FALSE)
















