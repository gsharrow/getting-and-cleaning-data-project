# getting-and-cleaning-data-project
This is the project for the Coursera getting and cleaning data course

## run_analysis.R

The script (run_analysis.R) does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements we care about.  In this case the mean and standard deviation for each measurement. 
3. Name the column headings to a descriptive name
4. Create a tidy data set containing just the columns we care about (mean and std) by subject and activity 
5. Creates another, independent clean or "tidy" data set with the average of each variable for each activity and each subject. 


## Process

1. load the train and test datasets and merge them (rbind) at the row level
    1. Extract the mean and standard deviation features (listed in CodeBook.md). This is the `values` table.
    2. Get the list of activities.
    3. Put the activity *labels* (not numbers) into the `values` table.
    4. Get the list of subjects.
    5. Put the subject IDs into the `values` table.
2. Join the test and train interim datasets.
3. Put each variable on its own row.
4. Rejoin the entire table, keying on subject/acitivity pairs, applying the mean function to each vector of values in each subject/activity pair. This is the clean dataset.
5. Write the clean dataset to disk.

## Cleaned Data

The resulting clean dataset is in this repository at: `data/cleaned.txt`. It contains one row for each subject/activity pair and columns for subject, activity, and each feature that was a mean or standard deviation from the original dataset.

## Notes

X_* - feature values (one row of 561 features for a single activity)
Y_* - activity identifiers (for each row in X_*)
subject_* - subject identifiers for rows in X_*