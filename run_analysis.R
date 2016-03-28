# Step 0: Install and load necessary packages.
###########################################################################
install.packages("plyr")
library(plyr)


# Step 1: Merge the training and the test sets to create one data set.
###########################################################################
setwd("C:/Users/mahesh/Documents/UCI HAR Dataset/");

x_train <- read.table("./train/X_train.txt")
x_test <- read.table("./test/X_test.txt")
x_data <- rbind(x_train, x_test)

y_train <- read.table("./train/y_train.txt")
y_test <- read.table("./test/y_test.txt")
y_data <- rbind(y_train, y_test)

subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_data <- rbind(subject_train, subject_test)


# Step 2: Extract only the measurements on the mean and standard deviation
# for each measurement.
###########################################################################
features <- read.table("./features.txt")
names(x_data) <- features[, 2]
x_data <- x_data[, grep("-(mean|std)\\(\\)", names(x_data))]


# Step 3: Use descriptive activity names to name the activities in the data 
# set.
###########################################################################
activities <- read.table("./activity_labels.txt")
names(y_data) <- "activity"
y_data[, 1] <- activities[y_data[, 1], 2]


# Step 4: Appropriately label the data set with descriptive variable names.
###########################################################################
names(subject_data) <- "subject"
data <- cbind(x_data, y_data, subject_data)


# Step 5: From the data set in Step 4, create a second, independent tidy data
# set with the average of each variable for each activity and each subject.
###########################################################################
avg_data <- ddply(data, .(subject, activity), colwise(mean))
write.table(avg_data, "./tidy_data.txt", row.name = FALSE)