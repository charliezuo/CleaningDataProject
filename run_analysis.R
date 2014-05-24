library(plyr)
library(reshape2)

#Reading the raw datasets R
test <- read.table("X_test.txt", header=FALSE)
train<- read.table("X_train.txt", header=FALSE)
header <- read.table("features.txt", header=FALSE, sep=" ", stringsAsFactors=FALSE)
activityLabel <- read.table("activity_labels.txt", col.names=c("activitycode","activityname"))
Subjecttest <- read.table("subject_test.txt", col.names=c("subject"))
Ytest <- read.table("Y_test.txt", col.names="activitycode")

# Cleaning and subsetting for the test dataset
names(test) <- header[,2]
i <- grep("mean\\(\\)+|std", header[,2], value = TRUE)
TestSet <- cbind(Ytest,Subjecttest,test[,i])
names(TestSet) <- gsub("-", "",names(TestSet))
names(TestSet) <- tolower(names(TestSet))
TestSet <- merge(activityLabel, TestSet, by.x="activitycode", by.y="activitycode",all=TRUE)

# Cleaning and subsetting for the training dataset
Ytrain <- read.table("Y_train.txt", col.names=c("activitycode"))
Subjecttrain <- read.table("subject_train.txt",col.names=c("subject"))
names(train) <- header[,2]
i <- grep("mean\\(\\)+|std", header[,2], value = TRUE)
TrainSet <- cbind(Ytrain,Subjecttrain, train[,i])
names(TrainSet) <- gsub("-", "",names(TrainSet))
names(TrainSet) <- tolower(names(TrainSet))
TrainSet <- merge(activityLabel, TrainSet, by.x="activitycode", by.y="activitycode",all=TRUE)

# Combine the test and training datasets
Dataset <- rbind(TestSet, TrainSet)

# Finally using reshape2 package to get the final tidy dataset for the project
dt <- melt(Dataset, id.vars=c("subject","activitycode","activityname"))
dt1 <- dcast(dt, subject + activityname ~ variable, mean)
write.csv(dt1, "tidydata.txt", row.names=FALSE)  
  
  