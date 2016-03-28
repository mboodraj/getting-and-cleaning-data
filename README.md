# getting-and-cleaning-data

## Introduction
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. 

## Data
The data for this exercuse were collected from the accelerometers of a Samsung Galaxy S smartphone. The original dataset can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Analysis
An R script called run_analysis.R was developed to tidy the abovementioned dataset by:
1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data  set.
4. Appropriately labelling the data set with descriptive variable names.
5. Creating a second, independent tidy data set (from the data in Step 4) with the average of each variable for each activity and each subject.

## Code Book
Details of all the variables in the tidy dataset are provided in CodeBook.md.

## Output
The final tidy dataset is provided as tidy_data.txt.
