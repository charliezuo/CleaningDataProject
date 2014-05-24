CleaningDataProject
===================

Project for Getting and Cleaning Data course in Data Science Track

In this project, we are given the task to getting, cleaning and summarizing the data collected from the accelerometers from the Samsung Galaxy S smartphone. Based on the assignment, we were asked to only select mean and standard deviation variables from the dataset, and also include the "subject" and "activity" associated with each variable. Therefore, we have collected for the final tidy dataset, a total of 68 variables and 180 rows.

The run_analysis.r file provides the R script that performs all the tasks in getting, cleaning, and summarizing data.

Note the script perform for the same tasks separately for test and train data, then merge the two datasets together to ensure the code can work on small datasets firs to save development time, so would not have to perform task on much larger datasets constantly. 

In the first part of the script, the script reads both the Test (test.txt) and Training (train.text) data into R. Since these files do not have headers, then it loads "features.txt" into R as a data frame to be the headers for the raw datasets. Then script reads in activity_label, activity code and subject files for us to combine the raw data files together later on. In the next step, it started subsetting data, and cleaning the headers on the raw datasets based on the definition of tidy data mentioned in Prof Leek's lectures. And merge the activity_label, subject, and test data together to create a data frame TestSet.

The script did the same steps above on the training data, to generate a data frame TrainSet. After that, rbind() function was used to combine the test and train data together. 

In the last steps to calculate average of each variables for each subject and activity, melt and dcast functions inn reshape2 package was used to reshape and summarize data to generate the final tidy dataset, then writes it to the disk as "tidydata.txt".





