Tidy Data Set: Subject Activity Mean of Mean and Stdev Variables
================================================================

This code book is for the tidy data set `UCI_HAR_Tidy_Dataset.txt`
produced from the "Human Activity Recognition Using Smartphones
Dataset Version 1.0" (UCI Data Set).

Data Set Information
====================

UCI Data Set homepage:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

CloudFront data set mirror:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The UCI Data Set is released under the following license:

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
> Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using
> a  Multiclass Hardware-Friendly Support Vector Machine. International
> Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
> Spain. Dec 2012
>
> This dataset is distributed AS-IS and no responsibility implied or
> explicit can be addressed to the authors or their institutions for its
> use or misuse. Any commercial use is prohibited.


Data Summarization
==================

The tidy data set was produced by summarizing the data variables from
the UCI Data Set that contained both a measured mean and standard
deviation. This was done by pruning all column names that did not
contain *mean()* or *std()*.

The subject identifier was added to the data set as the **Subject**
variable. The activity being performed during the measurement was
added to the data set as the **Activity** variable.

The training and testing data were combined to form a single data
set. Measurements were summarized for each activity performed by an
individual subject to create a single per subject per activity
measurement, representing the mean of the measurements collected for
that activity.


Data Description
================

The UCI Data Set contains variable descriptions in the *UCI HAR
Dataset/features_info.txt*.

From *features_info.txt*:

> The features selected for this database come from the accelerometer
> and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time
> domain signals (prefix 't' to denote time) were captured at a constant
> rate of 50 Hz. Then they were filtered using a median filter and a 3rd
> order low pass Butterworth filter with a corner frequency of 20 Hz to
> remove noise. Similarly, the acceleration signal was then separated
> into body and gravity acceleration signals (tBodyAcc-XYZ and
> tGravityAcc-XYZ) using another low pass Butterworth filter with a
> corner frequency of 0.3 Hz.
>
> Subsequently, the body linear acceleration and angular velocity were
> derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
> tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
> signals were calculated using the Euclidean norm (tBodyAccMag,
> tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these
> signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
> fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
> indicate frequency domain signals).
> 
> These signals were used to estimate variables of the feature vector
> for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y
> and Z directions.


Tidy Data Set Variables
=======================

The following is a description of the variables in
`UCI_HAR_Tidy_Dataset.txt`:

  1.  **Subject** : Subject identifier: [1,30].

  2.  **Activity** : Activity performed: *WALKING*,
      *WALKING_UPSTAIRS*, *WALKING_DOWNSTAIRS*, *SITTING*, *STANDING*
      and *LAYING*.

  3.  **tBodyAcc_mean_X** : Mean of time domain body acceleration
      signal X axis mean measurements.

  4.  **tBodyAcc_mean_Y** : Mean of time domain body acceleration
      signal Y axis mean measurements.

  5.  **tBodyAcc_mean_Z** : Mean of time domain body acceleration
      signal Z axis mean measurements.

  6.  **tBodyAcc_std_X** : Mean of time domain body acceleration
      signal X axis standard deviation measurements.

  7.  **tBodyAcc_std_Y** : Mean of time domain body acceleration
      signal Y axis standard deviation measurements.

  8.  **tBodyAcc_std_Z** : Mean of time domain body acceleration
      signal Z axis standard deviation measurements.

  9. **tGravityAcc_mean_X** : Mean of time domain gravity acceleration
     signal X axis mean measurements.

  10. **tGravityAcc_mean_Y** : Mean of time domain gravity
      acceleration signal Y axis mean measurements.
  
  11. **tGravityAcc_mean_Z** : Mean of time domain gravity
      acceleration signal Z axis mean measurements.
  
  12. **tGravityAcc_std_X** : Mean of time domain gravity acceleration
      signal X axis standard deviation measurements.
  
  13. **tGravityAcc_std_Y** : Mean of time domain gravity acceleration
      signal Y axis standard deviation measurements.
    
  14. **tGravityAcc_std_Z** : Mean of time domain gravity acceleration
      signal Z axis standard deviation measurements.
  
  15. **tBodyAccJerk_mean_X** : Mean of time domain body acceleration
      jerk signal X axis mean measurements.
  
  16. **tBodyAccJerk_mean_Y** : Mean of time domain body acceleration
      jerk signal Y axis mean measurements.
  
  17. **tBodyAccJerk_mean_Z** : Mean of time domain body acceleration
      jerk signal Z axis mean measurements.

  18. **tBodyAccJerk_std_X** : Mean of time domain body acceleration
      jerk signal X axis standard deviation measurements.

  19. **tBodyAccJerk_std_Y** : Mean of time domain body acceleration
      jerk signal Y axis standard deviation measurements.

  20. **tBodyAccJerk_std_Z** : Mean of time domain body acceleration
      jerk signal Z axis standard deviation measurements.

  21. **tBodyGyro_mean_X** : Mean of time domain body gyro signal X
      axis mean measurements.

  22. **tBodyGyro_mean_Y** : Mean of time domain body gyro signal Y
      axis mean measurements.
 
  23. **tBodyGyro_mean_Z** : Mean of time domain body gyro signal Z
      axis mean measurements.
 
  24. **tBodyGyro_std_X** : Mean of time domain body gyro signal X
      axis standard deviation measurements.
 
  25. **tBodyGyro_std_Y** : Mean of time domain body gyro signal Y
      axis standard deviation measurements.
 
  26. **tBodyGyro_std_Z** : Mean of time domain body gyro signal Z
      axis standard deviation measurements.

  27. **tBodyGyroJerk_mean_X** : Mean of time domain body gyro jerk
      signal X axis mean measurements.

  28. **tBodyGyroJerk_mean_Y** : Mean of time domain body gyro jerk
      signal Y axis mean measurements.

  29. **tBodyGyroJerk_mean_Z** : Mean of time domain body gyro jerk
      signal Z axis mean measurements.

  30. **tBodyGyroJerk_std_X** : Mean of time domain body gyro jerk
      signal X axis standard deviation measurements.

  31. **tBodyGyroJerk_std_Y** : Mean of time domain body gyro jerk
      signal Y axis standard deviation measurements.

  32. **tBodyGyroJerk_std_Z** : Mean of time domain body gyro jerk
      signal Z axis standard deviation measurements.

  33. **tBodyAccMag_mean** : Mean of the time domain body acceleration
      signal magnitude mean measurements.

  34. **tBodyAccMag_std** : Mean of the time domain body acceleration
      signal magnitude standard deviation measurements.

  35. **tGravityAccMag_mean** : Mean of the time domain gravity
      acceleration signal magnitude mean measurements.

  36. **tGravityAccMag_std** : Mean of the time domain gravity
      acceleration signal magnitude standard deviation measurements.

  37. **tBodyAccJerkMag_mean** : Mean of the time domain gravity
      acceleration jerk signal magnitude mean measurements.

  38. **tBodyAccJerkMag_std** : Mean of the time domain gravity
      acceleration jerk signal magnitude standard deviation
      measurements.

  39. **tBodyGyroMag_mean** : Mean of the time domain body gyro signal
      magnitude mean measurements.
  
  40. **tBodyGyroMag_std** : Mean of the time domain body gyro signal
      magnitude standard deviation measurements.

  41. **tBodyGyroJerkMag_mean** : Mean of the time domain body gyro
      jerk signal magnitude mean measurements.

  42. **tBodyGyroJerkMag_std** : Mean of the time domain body gyro
      jerk signal magnitude standard deviation measurements.

  43. **fBodyAcc_mean_X** : Mean of frequency domain body acceleration
      signal X axis mean measurements.

  44. **fBodyAcc_mean_Y** : Mean of frequency domain body acceleration
      signal Y axis mean measurements.

  45. **fBodyAcc_mean_Z** : Mean of frequency domain body acceleration
      signal Z axis mean measurements.

  46. **fBodyAcc_std_X** : Mean of frequency domain body acceleration
      signal X axis standard deviation measurements.

  47. **fBodyAcc_std_Y** : Mean of frequency domain body acceleration
      signal Y axis standard deviation measurements.

  48. **fBodyAcc_std_Z** : Mean of frequency domain body acceleration
      signal Z axis standard deviation measurements.

  49. **fBodyAccJerk_mean_X** : Mean of frequency domain body
      acceleration jerk signal X axis mean measurements.

  50. **fBodyAccJerk_mean_Y** : Mean of frequency domain body
      acceleration jerk signal Y axis mean measurements.

  51. **fBodyAccJerk_mean_Z** : Mean of frequency domain body
      acceleration jerk signal Z axis mean measurements.

  52. **fBodyAccJerk_std_X** : Mean of frequency domain body
      acceleration jerk signal X axis standard deviation measurements.

  53. **fBodyAccJerk_std_Y** : Mean of frequency domain body
      acceleration jerk signal Y axis standard deviation measurements.

  54. **fBodyAccJerk_std_Z** : Mean of frequency domain body
      acceleration jerk signal Z axis standard deviation measurements.

  55. **fBodyGyro_mean_X** : Mean of frequency domain body gyro signal
      X axis mean measurements.

  56. **fBodyGyro_mean_Y** : Mean of frequency domain body gyro signal
      Y axis mean measurements.

  57. **fBodyGyro_mean_Z** : Mean of frequency domain body gyro signal
      Z axis mean measurements.

  58. **fBodyGyro_std_X**  : Mean of frequency domain body gyro signal
      X axis standard deviation measurements.

  59. **fBodyGyro_std_Y** : Mean of frequency domain body gyro signal
      Y axis standard deviation measurements.

  60. **fBodyGyro_std_Z** : Mean of frequency domain body gyro signal
      Z axis standard deviation measurements.

  61. **fBodyAccMag_mean** : Mean of frequency domain body acceleration
      magnitude mean measurements.

  62. **fBodyAccMag_std**  : Mean of frequency domain body acceleration
      magnitude standard deviation measurements.

  63. **fBodyBodyAccJerkMag_mean** : Mean of frequency domain body
      acceleration jerk magnitude mean measurements.

  64. **fBodyBodyAccJerkMag_std** : Mean of frequency domain body
      acceleration jerk magnitude standard deviation measurements.

  65. **fBodyBodyGyroMag_mean** : Mean of frequency domain body gyro
      magnitude mean measurements.

  66. **fBodyBodyGyroMag_std** : Mean of frequency domain body gyro
      magnitude standard deviation measurements.

  67. **fBodyBodyGyroJerkMag_mean** : Mean of frequency domain body
      gyro jerk magnitude mean measurements.

  68. **fBodyBodyGyroJerkMag_std** : Mean of frequency domain body
      gyro jerk magnitude standard deviation measurements.
