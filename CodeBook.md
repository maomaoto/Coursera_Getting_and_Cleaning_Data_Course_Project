Code Book
=========

It's naming is the same as original data set.(Please refer to end of this file)


First data set
--------------
First data set contains 68 columns 
- subject
- activity
- 33 signals * 2 variables (mean(), std() )

The timing relationship may not be reserved, because of re-ordering with subject/activity. <br>
Column names could be restored from tidy_data_set_1_colnames.txt.  <br>


Second data set
---------------
Second data set contains 563 columns
- subject
- activity
- 561 averaged columns (33 signals * 17 variables)

Second data set is also arranged in the order of subject/activity. <br>
Column names could be restored from tidy_data_set_2_colnames.txt.  <br>


Naming
------

Signals: <br>

tBodyAcc-XYZ <br>
tGravityAcc-XYZ <br>
tBodyAccJerk-XYZ <br>
tBodyGyro-XYZ <br>
tBodyGyroJerk-XYZ <br>
tBodyAccMag <br>
tGravityAccMag <br>
tBodyAccJerkMag <br>
tBodyGyroMag <br>
tBodyGyroJerkMag <br>
fBodyAcc-XYZ <br>
fBodyAccJerk-XYZ <br>
fBodyGyro-XYZ <br>
fBodyAccMag <br>
fBodyAccJerkMag <br>
fBodyGyroMag <br>
fBodyGyroJerkMag <br>

The set of variables that were estimated from these signals are: 

mean(): Mean value <br>
std(): Standard deviation <br>
mad(): Median absolute deviation  <br>
max(): Largest value in array <br>
min(): Smallest value in array <br>
sma(): Signal magnitude area <br>
energy(): Energy measure. Sum of the squares divided by the number of values.  <br>
iqr(): Interquartile range  <br>
entropy(): Signal entropy <br>
arCoeff(): Autorregresion coefficients with Burg order equal to 4 <br>
correlation(): correlation coefficient between two signals <br>
maxInds(): index of the frequency component with largest magnitude <br>
meanFreq(): Weighted average of the frequency components to obtain a mean frequency <br>
skewness(): skewness of the frequency domain signal  <br>
kurtosis(): kurtosis of the frequency domain signal  <br>
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window. <br>
angle(): Angle between to vectors. <br>

