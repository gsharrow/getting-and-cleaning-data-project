# Code Book for data cleansing project

## Identification Fields

* `subject` - The participant or "subject""
* `activity` - The name of the activity performed when the corresponding measurements were taken

## Extracted Features: Name them  number

* `tBodyAcc-mean()-X` (1)
* `tBodyAcc-mean()-Y` (2)
* `tBodyAcc-mean()-Z` (3)
* `tBodyAcc-std()-X` (4)
* `tBodyAcc-std()-Y` (5)
* `tBodyAcc-std()-Z` (6)
* `tGravityAcc-mean()-X` (41)
* `tGravityAcc-mean()-Y` (42)
* `tGravityAcc-mean()-Z` (43)
* `tGravityAcc-std()-X` (44)
* `tGravityAcc-std()-Y` (45)
* `tGravityAcc-std()-Z` (46)
* `tBodyAccJerk-mean()-X` (81)
* `tBodyAccJerk-mean()-Y` (82)
* `tBodyAccJerk-mean()-Z` (83)
* `tBodyAccJerk-std()-X` (84)
* `tBodyAccJerk-std()-Y` (85)
* `tBodyAccJerk-std()-Z` (86)
* `tBodyGyro-mean()-X` (121)
* `tBodyGyro-mean()-Y` (122)
* `tBodyGyro-mean()-Z` (123)
* `tBodyGyro-std()-X` (124)
* `tBodyGyro-std()-Y` (125)
* `tBodyGyro-std()-Z` (126)
* `tBodyGyroJerk-mean()-X` (161)
* `tBodyGyroJerk-mean()-Y` (162)
* `tBodyGyroJerk-mean()-Z` (163)
* `tBodyGyroJerk-std()-X` (164)
* `tBodyGyroJerk-std()-Y` (165)
* `tBodyGyroJerk-std()-Z` (166)
* `tBodyAccMag-mean()` (201)
* `tBodyAccMag-std()` (202)
* `tGravityAccMag-mean()` (214)
* `tGravityAccMag-std()` (215)
* `tBodyAccJerkMag-mean()` (227)
* `tBodyAccJerkMag-std()` (228)
* `tBodyGyroMag-mean()` (240)
* `tBodyGyroMag-std()` (241)
* `tBodyGyroJerkMag-mean()` (253)
* `tBodyGyroJerkMag-std()` (254)
* `fBodyAcc-mean()-X` (266)
* `fBodyAcc-mean()-Y` (267)
* `fBodyAcc-mean()-Z` (268)
* `fBodyAcc-std()-X` (269)
* `fBodyAcc-std()-Y` (270)
* `fBodyAcc-std()-Z` (271)
* `fBodyAccJerk-mean()-X` (345)
* `fBodyAccJerk-mean()-Y` (346)
* `fBodyAccJerk-mean()-Z` (347)
* `fBodyAccJerk-std()-X` (348)
* `fBodyAccJerk-std()-Y` (349)
* `fBodyAccJerk-std()-Z` (350)
* `fBodyGyro-mean()-X` (424)
* `fBodyGyro-mean()-Y` (425)
* `fBodyGyro-mean()-Z` (426)
* `fBodyGyro-std()-X` (427)
* `fBodyGyro-std()-Y` (428)
* `fBodyGyro-std()-Z` (429)
* `fBodyAccMag-mean()` (503)
* `fBodyAccMag-std()` (504)
* `fBodyBodyAccJerkMag-mean()` (516)
* `fBodyBodyAccJerkMag-std()` (517)
* `fBodyBodyGyroMag-mean()` (529)
* `fBodyBodyGyroMag-std()` (530)
* `fBodyBodyGyroJerkMag-mean()` (542)
* `fBodyBodyGyroJerkMag-std()` (543)

## Labels for activity 
* `WALKING` (1)
* `WALKING_UPSTAIRS` (2)
* `WALKING_DOWNSTAIRS` (3)
* `SITTING` (4)
* `STANDING` (5)
* `LAYING` (6)

## Extracted Features column number 


(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426, 427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)


## Extracted Feature Names


("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()")


## Activities numbers


(1, 2, 3, 4, 5, 6)


## Activity Names 


("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
