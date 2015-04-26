---
title: "Readme"
author: "Miguel O. Alvarez"
date: "April 26, 2015"
output: html_document
---

==================================================================
Coursera Getting and Cleaning Data Course 
April 2015
Miguel O. Alvarez
==================================================================
This is some general information/highlights on the work for this project. 

I believe the code provides the results requested, generating tidy data in the wide form.

It also complies with all the steps described for the assignment (although not necessarily
in that order. 

The resulting data set shows all the columns from the original set, with the data grouped 
by the activity and the subject, and each column summarized to the mean value of each 
observation type by activity/subject.

The column names were prepended with the string "Mean-" to denote that the values reflect 
the mean of the original set of observations by activity/subject.

The general process was to first merge and tidy the data for each set (train and test).  
Then merge the two tidy sets (clean_train_set and clean_test_set) into one (merged_set).
Then used the merged set to generate a new frame (tidy_set) with the average (mean) of
each variable by activity/subject.
Finally, update the column names of the tidy_set to denote that they contain the mean of 
the original measurements (by activity/subject). 

The script file is run_analysis.R.
