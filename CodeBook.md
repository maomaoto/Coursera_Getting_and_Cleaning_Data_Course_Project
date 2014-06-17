Code Book
=========

It's naming is the same as original data set.(Please refer to end of this file)


First data set
--------------
First data set contains 68 columns 
- subject
- activity
- 33 signals * 2 variables(mean(), std())
The timing relationship may not be reserved, because of re-ordering with subject/activity.
Column names could be restored from tidy_data_set_1_colnames.txt. 


Second data set
---------------
Second data set contains 563 columns
- subject
- activity
- 561 averaged columns (33 signals * 17 variables)
Second data set is also arranged in the order of subject/activity.
Column names could be restored from tidy_data_set_2_colnames.txt. 


Naming
------

Signals: <br>

tBodyAcc-XYZ <br>
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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

