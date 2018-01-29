# Coursera-Getting-and-Cleaning-Data-Course-Project
>One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
>
>Here are the data for the project:
>
>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This is the steps that the run_analysis.R file performs:

0. Preliminary work
   - Download zip file and unzip it
   - Loading the values, subjects and activities for train and test data
1. Merge test and train data set
   - Renames columns for subjects, activities and values columns
   - Merge columns for subjects, activities and values columns
   - Merge train and test data
   - Remove unnecessary files
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Convert the Activity column into factor
4. Appropriately labels the data set with descriptive variable names
5. Tidy dataset
   - Generate a tidy data set by activity and subject
   - Generate the mean for each variable of the tidy dataset by activity and subject
6. Export the tidy data set in a tab separated file (.txt)
