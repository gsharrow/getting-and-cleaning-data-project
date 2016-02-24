# This is the code for Getting and Cleaning Data course project
# The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
# The goal is to prepare tidy data that can be used for later analysis.
#
# set the working directory for the project
setwd('c:/Users/sharrgk/Dropbox (Personal)/Data Science/data cleansing course/project/')
#
# load the "X"  values into two temporary tables
# first the training data
xtemp01 <- read.table("UCI HAR Dataset/train/X_train.txt")
#
# now the test data
xtemp02 <- read.table("UCI HAR Dataset/test/X_test.txt")
#
# Now append or bind at the row level the two x tables together to give us one complete table of training and test data
xcombined <- rbind(xtemp01,xtemp02)
#
#remove the xtemp tables since they are no longer needed
rm(xtemp01,xtemp02)
#
#load the "Y"  values into two temporary tables
# first the training data
ytemp01 <- read.table("UCI HAR Dataset/train/Y_train.txt")
#
# now the test data
ytemp02 <- read.table("UCI HAR Dataset/test/Y_test.txt")
#
# Now append or bind at the row level the two Y tables together to give us one complete table of training and test data
ycombined <- rbind(ytemp01,ytemp02)
#
#remove the ytemp tables since they are no longer needed
rm(ytemp01,ytemp02)
#
#load the "subject" values into two temporary tables
# first the training data
subjecttemp01 <- read.table("UCI HAR Dataset/train/subject_train.txt")
#
# now read the test data
subjecttemp02 <- read.table("UCI HAR Dataset/test/subject_test.txt")
#
# Now append or bind at the row level the two Y tables together to give us one complete table of training and test data
subjectCombined <- rbind(subjecttemp01,subjecttemp02)
#
#remove the subect temp tables since they are no longer needed
rm(subjecttemp01,subjecttemp02)
#
# Read the activity labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
#
#
ycombined[,1] = activities[ycombined[,1], 2]
names(ycombined) <- "activity"
# 
#
names(subjectCombined) <- "subject"
#
# get the column (field) names from the features text file.
columnNames <- read.table("UCI HAR Dataset/features.txt")
#
#Find the column names that have the text "mean()" or "std()".  This gives us the columns we want, because all we care about is the mean and 
#standard deviations.
ColumnsWeNeed <- grep("-mean\\(\\)|-std\\(\\)", columnNames[, 2],value=FALSE)
#
# Now filter the xcombined table on only the "columns we need" vector
xcombined <- xcombined[,ColumnsWeNeed]
#
# Now add the column header names to the xcombined table
names(xcombined) <- columnNames[ColumnsWeNeed, 2]
#
#Get rid of the () from the xcombined column names
names(xcombined) <- gsub("\\(|\\)", "", names(xcombined))
#
#make the column names lower case
names(xcombined) <- tolower(names(xcombined))
#
# Combine all three tables to make a tidy data set 
tidy_data <- cbind(subjectCombined, ycombined, xcombined)
#
#  Write the data set
write.table(tidy_data, "tidy_data.txt")
#
# Creates a second, clean data set with the averages of each variable
# get the subjects, activities, columns, and set up the results table to loop through
uniqueSubjects = unique(subjectCombined)[,1]
numSubjects = length(unique(subjectCombined)[,1])
numActivities = length(activities[,1])
numCols = dim(tidy_data)[2]
results = tidy_data[1:(numSubjects*numActivities), ]
rowNum = 1
for (x in 1:numSubjects) {
  for (y in 1:numActivities) {
    results[rowNum, 1] = uniqueSubjects[x]
    results[rowNum, 2] = activities[y, 2]
    tmp <- tidy_data[tidy_data$subject==x & tidy_data$activity==activities[y, 2], ]
    results[rowNum, 3:numCols] <- colMeans(tmp[, 3:numCols])
    rowNum = rowNum+1
  }
}
write.table(results, "tidy_data_with_the_averages.txt")

