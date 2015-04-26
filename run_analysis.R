## Script for the Getting and Cleaning Data course project
## Miguel O. Alvarez

## Read in data file for the test set
orig_test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")

## Read in subject file for the test set
subject_test_set <- read.table("./UCI HAR Dataset/test/subject_test.txt")
## Give descriptive name
names(subject_test_set) <- "subject"

## Read in activity file for the test set
activity_test_set <- read.table("./UCI HAR Dataset/test/Y_test.txt")
## Give descriptive name
names(activity_test_set) <- "activity"

## Read in data file for the train set
orig_train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")

## Read in subject file for the train set
subject_train_set <- read.table("./UCI HAR Dataset/train/subject_train.txt")
## Give descriptive name to subject column
names(subject_train_set) <- "subject"

## Read in activity file for the train set
activity_train_set <- read.table("./UCI HAR Dataset/train/Y_train.txt")
## Give descriptive name to activity column
names(activity_train_set) <- "activity"

## Load in descriptive activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Load in descriptive measurement labels
features <- read.table("./UCI HAR Dataset/features.txt")
mean_std_feature_list <- grepl("mean()|std()", features$V2)

# Cut down each data frame to contain only mean/std measurement columns
mean_std_test_set  <- orig_test_set[,mean_std_feature_list]
mean_std_train_set <- orig_train_set[,mean_std_feature_list]

# Cut down feature list to contain only mean/std column labels
mean_std_features <- features[mean_std_feature_list,]

## Complete tidying of test set
##    add column names from cut down feature list
names(mean_std_test_set) <- mean_std_features$V2
##    Now remove columns that are about meanFreq (leaving only mean() and std())
clean_test_set <- select(mean_std_test_set, -contains("meanFreq"))
##    Add new column for activity type
clean_test_set <- cbind(activity_test_set, clean_test_set)
##    Replace activity labels with descriptive activity names
clean_test_set$activity <- factor(clean_test_set$activity, levels = activity_labels$V1, labels = activity_labels$V2)
##    Add new column for subject
clean_test_set <- cbind(subject_test_set, clean_test_set)

## Complete tidying of train set
##    add column names from feature list
names(mean_std_train_set) <- mean_std_features$V2
##    Now remove columns that are about meanFreq (leaving only mean() and std())
clean_train_set <- select(mean_std_train_set, -contains("meanFreq"))
##    Add new column for activity type
clean_train_set <- cbind(activity_train_set, clean_train_set)
##    Replace activity labels with descriptive activity names
clean_train_set$activity <- factor(clean_train_set$activity, levels = activity_labels$V1, labels = activity_labels$V2)
##    Add new column for subject
clean_train_set <- cbind(subject_train_set, clean_train_set)

## Merge the cleaned up train and test sets
merged_set <- rbind(clean_test_set, clean_train_set)

## Generate new tidy set with the average of each variable for each activity and each subject
tidy_set <- group_by(merged_set, activity, subject) %>% summarise_each(funs(mean))
## Update column labels
names(tidy_set) <- gsub("tBody", "Mean-tBody", names(tidy_set))
names(tidy_set) <- gsub("fBody", "Mean-fBody", names(tidy_set))
names(tidy_set) <- gsub("tGravity", "Mean-tGravity", names(tidy_set))

