################################################
## Getting and cleaning data - course project ##
################################################

# Code book
=================

## Background
The variables within this data set originate from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## Raw data 
The following signals were used to estimate variables of the feature vector for each pattern: 
Note, '-XYZ' is used to denote the occurence of 3 variables per signal type, one in each of the X, Y and Z directions.

	tBodyAcc-XYZ
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

## Transformations
The raw signals were used to genearte three sets of variables:

**mean()**: Mean value

**meanFreq()**: Weighted average of the frequency components to obtain a mean frequency

**std()**: Standard deviation

Finally, averages of the mean and standard deviation variables were generated for each test subject while carring out 6 activities.

## Discription of the 81 fields:
### reminder, values represent avearges by subject and activity
1. Subject (factor): The 30 individual test subjects
2. Activity (charater): The 6 activities assessed, 1 - WALKING, 2 - WALKING_UPSTAIRS, 3 - WALKING_DOWNSTAIRS, 4 - SITTING, 5 - STANDING, 6 - LAYING
3. tBodyAcc-mean()-X (numeric): Time - body acceleration - measurement of the accelerometer as a mean - X plain
4. tBodyAcc-mean()-Y (numeric): Time - body acceleration - measurement of the accelerometer as a mean - Y plain
5. tBodyAcc-mean()-Z (numeric): Time - body acceleration - measurement of the accelerometer as a mean - Z plain
6. tGravityAcc-mean()-X (numeric): Time - Gravity acceleration - measurement of the accelerometer as a mean - X plain
7. tGravityAcc-mean()-Y (numeric): Time - Gravity acceleration - measurement of the accelerometer as a mean - Y plain
8. tGravityAcc-mean()-Z (numeric): Time - Gravity acceleration - measurement of the accelerometer as a mean - Z plain
9. tBodyAccJerk-mean()-X (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - X plain
10. tBodyAccJerk-mean()-Y (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - Y plain
11. tBodyAccJerk-mean()-Z (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - Z plain
12. tBodyGyro-mean()-X (numeric): Time - body acceleration - measurment of the gyroscope as a mean - X plain
13. tBodyGyro-mean()-Y (numeric): Time - body acceleration - measurment of the gyroscope as a mean - Y plain
14. tBodyGyro-mean()-Z (numeric): Time - body acceleration - measurment of the gyroscope as a mean - Z plain
15. tBodyGyroJerk-mean()-X (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - X plain
16. tBodyGyroJerk-mean()-Y (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - Y plain
17. tBodyGyroJerk-mean()-Z (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - Z plain
18. tBodyAccMag-mean() (numeric): Time - body acceleration - measurement of the accelerometer the magnitude of the signal (as calculated using the Euclidean norm) as a mean
19. tGravityAccMag-mean() (numeric): Time - Gravity acceleration - measurement of the accelerometer the magnitude of the signal (as calculated using the Euclidean norm) as a mean
20. tBodyAccJerkMag-mean() (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a mean
21. tBodyGyroMag-mean() (numeric): Time - body acceleration - measurment of the gyroscope the magnitude of the signal (as calculated using the Euclidean norm) as a mean
22. tBodyGyroJerkMag-mean() (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a mean
23. fBodyAcc-mean()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a mean - X plain
24. fBodyAcc-mean()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a mean - Y plain
25. fBodyAcc-mean()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a mean - Z plain
26. fBodyAcc-meanFreq()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a meanFreq - X plain
27. fBodyAcc-meanFreq()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a meanFreq - Y plain
28. fBodyAcc-meanFreq()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a meanFreq - Z plain
29. fBodyAccJerk-mean()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - X plain
30. fBodyAccJerk-mean()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - Y plain
31. fBodyAccJerk-mean()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a mean - Z plain
32. fBodyAccJerk-meanFreq()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a meanFreq - X plain
33. fBodyAccJerk-meanFreq()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a meanFreq - Y plain
34. fBodyAccJerk-meanFreq()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a meanFreq - Z plain
35. fBodyGyro-mean()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a mean - X plain
36. fBodyGyro-mean()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a mean - Y plain
37. fBodyGyro-mean()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a mean - Z plain
38. fBodyGyro-meanFreq()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a meanFreq - X plain
39. fBodyGyro-meanFreq()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a meanFreq - Y plain
40. fBodyGyro-meanFreq()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a meanFreq - Z plain
41. fBodyAccMag-mean() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the magnitude of the signal (as calculated using the Euclidean norm) as a mean
42. fBodyAccMag-meanFreq() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the magnitude of the signal (as calculated using the Euclidean norm) as a meanFreq
43. fBodyBodyAccJerkMag-mean() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a mean
44. fBodyBodyAccJerkMag-meanFreq() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a meanFreq
45. fBodyBodyGyroMag-mean() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope the magnitude of the signal (as calculated using the Euclidean norm) as a mean
46. fBodyBodyGyroMag-meanFreq() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope the magnitude of the signal (as calculated using the Euclidean norm) as a meanFreq
47. fBodyBodyGyroJerkMag-mean() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a mean
48. fBodyBodyGyroJerkMag-meanFreq() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a meanFreq
49. tBodyAcc-std()-X (numeric): Time - body acceleration - measurement of the accelerometer as a standard deviation - X plain
50. tBodyAcc-std()-Y (numeric): Time - body acceleration - measurement of the accelerometer as a standard deviation - Y plain
51. tBodyAcc-std()-Z (numeric): Time - body acceleration - measurement of the accelerometer as a standard deviation - Z plain
52. tGravityAcc-std()-X (numeric): Time - Gravity acceleration - measurement of the accelerometer as a standard deviation - X plain
53. tGravityAcc-std()-Y (numeric): Time - Gravity acceleration - measurement of the accelerometer as a standard deviation - Y plain
54. tGravityAcc-std()-Z (numeric): Time - Gravity acceleration - measurement of the accelerometer as a standard deviation - Z plain
55. tBodyAccJerk-std()-X (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - X plain
56. tBodyAccJerk-std()-Y (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - Y plain
57. tBodyAccJerk-std()-Z (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - Z plain
58. tBodyGyro-std()-X (numeric): Time - body acceleration - measurment of the gyroscope as a standard deviation - X plain
59. tBodyGyro-std()-Y (numeric): Time - body acceleration - measurment of the gyroscope as a standard deviation - Y plain
60. tBodyGyro-std()-Z (numeric): Time - body acceleration - measurment of the gyroscope as a standard deviation - Z plain
61. tBodyGyroJerk-std()-X (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - X plain
62. tBodyGyroJerk-std()-Y (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - Y plain
63. tBodyGyroJerk-std()-Z (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - Z plain
64. tBodyAccMag-std() (numeric): Time - body acceleration - measurement of the accelerometer the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
65. tGravityAccMag-std() (numeric): Time - Gravity acceleration - measurement of the accelerometer the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
66. tBodyAccJerkMag-std() (numeric): Time - body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
67. tBodyGyroMag-std() (numeric): Time - body acceleration - measurment of the gyroscope the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
68. tBodyGyroJerkMag-std() (numeric): Time - body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
69. fBodyAcc-std()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a standard deviation - X plain
70. fBodyAcc-std()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a standard deviation - Y plain
71. fBodyAcc-std()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer as a standard deviation - Z plain
72. fBodyAccJerk-std()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - X plain
73. fBodyAccJerk-std()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - Y plain
74. fBodyAccJerk-std()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) as a standard deviation - Z plain
75. fBodyGyro-std()-X (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a standard deviation - X plain
76. fBodyGyro-std()-Y (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a standard deviation - Y plain
77. fBodyGyro-std()-Z (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope as a standard deviation - Z plain
78. fBodyAccMag-std() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
79. fBodyBodyAccJerkMag-std() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurement of the accelerometer the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
80. fBodyBodyGyroMag-std() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
81. fBodyBodyGyroJerkMag-std() (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - measurment of the gyroscope the jerk signal (as given by the body linear acceleration and angular velocity in time) the magnitude of the signal (as calculated using the Euclidean norm) as a standard deviation
