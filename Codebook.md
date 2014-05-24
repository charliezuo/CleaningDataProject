###From "features_info.txt" in the raw data folder:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)." 

We only selected the mean and std from the original dataset. 

subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
activityname: the name of the physicial activity performed by the individuals, there are six types in this dataset:
1 WALKING,
2 WALKING_UPSTAIRS,
3 WALKING_DOWNSTAIRS,
4 SITTING,
5 STANDING,
6 LAYING.



| subject                    |   |
| activityname               |   |
| tbodyaccmean..x            |   |
| tbodyaccmean..y            |   |
| tbodyaccmean..z            |   |
| tbodyaccstd..x             |   |
| tbodyaccstd..y             |   |
| tbodyaccstd..z             |   |
| tgravityaccmean..x         |   |
| tgravityaccmean..y         |   |
| tgravityaccmean..z         |   |
| tgravityaccstd..x          |   |
| tgravityaccstd..y          |   |
| tgravityaccstd..z          |   |
| tbodyaccjerkmean..x        |   |
| tbodyaccjerkmean..y        |   |
| tbodyaccjerkmean..z        |   |
| tbodyaccjerkstd..x         |   |
| tbodyaccjerkstd..y         |   |
| tbodyaccjerkstd..z         |   |
| tbodygyromean..x           |   |
| tbodygyromean..y           |   |
| tbodygyromean..z           |   |
| tbodygyrostd..x            |   |
| tbodygyrostd..y            |   |
| tbodygyrostd..z            |   |
| tbodygyrojerkmean..x       |   |
| tbodygyrojerkmean..y       |   |
| tbodygyrojerkmean..z       |   |
| tbodygyrojerkstd..x        |   |
| tbodygyrojerkstd..y        |   |
| tbodygyrojerkstd..z        |   |
| tbodyaccmagmean..          |   |
| tbodyaccmagstd..           |   |
| tgravityaccmagmean..       |   |
| tgravityaccmagstd..        |   |
| tbodyaccjerkmagmean..      |   |
| tbodyaccjerkmagstd..       |   |
| tbodygyromagmean..         |   |
| tbodygyromagstd..          |   |
| tbodygyrojerkmagmean..     |   |
| tbodygyrojerkmagstd..      |   |
| fbodyaccmean..x            |   |
| fbodyaccmean..y            |   |
| fbodyaccmean..z            |   |
| fbodyaccstd..x             |   |
| fbodyaccstd..y             |   |
| fbodyaccstd..z             |   |
| fbodyaccjerkmean..x        |   |
| fbodyaccjerkmean..y        |   |
| fbodyaccjerkmean..z        |   |
| fbodyaccjerkstd..x         |   |
| fbodyaccjerkstd..y         |   |
| fbodyaccjerkstd..z         |   |
| fbodygyromean..x           |   |
| fbodygyromean..y           |   |
| fbodygyromean..z           |   |
| fbodygyrostd..x            |   |
| fbodygyrostd..y            |   |
| fbodygyrostd..z            |   |
| fbodyaccmagmean..          |   |
| fbodyaccmagstd..           |   |
| fbodybodyaccjerkmagmean..  |   |
| fbodybodyaccjerkmagstd..   |   |
| fbodybodygyromagmean..     |   |
| fbodybodygyromagstd..      |   |
| fbodybodygyrojerkmagmean.. |   |
| fbodybodygyrojerkmagstd..  |   |
