---
title: "Codebook"
author: "Miguel O. Alvarez"
date: "April 26, 2015"
output: html_document
---

==================================================================
Coursera Getting and Cleaning Data Course 
April 2015
Miguel O. Alvarez
==================================================================

Codebook for tidy data set

The tidy data set contains summary information (mean) for the mean and standard dev columns
of the original Samsumg Galaxy S smartphone accelerometer data obtained at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Column description:

activity: type of activity performed.
      				1	WALKING
					2	WALKING_UPSTAIRS
					3	WALKING_DOWNSTAIRS
					4	SITTING
					5	STANDING
					6	LAYING
					
subject:  number from 1-30 identifying the subject performing the activity

The rest of the columns indicate the mean of the mean() and std() columnms of the original
data set, summarized by activity and user.  Those original columns are described in the 
features_info.txt file contained in the original data set zip file. The subset of variables (features) that were estimated in the original set and used for this exercise were: 

mean(): Mean value

std(): Standard deviation

Key information about the various estimatimations extracted from the features_info.txt is shown below:

The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove 
noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth
 filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to 
obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, 
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag