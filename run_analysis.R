
################################################
## Getting and cleaning data - course project ##
################################################

# 1) Download the zip file to "C:/Users/Me/Documents/" location named as "UCI HAR Dataset.zip"
  url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url = url, destfile = "UCI HAR Dataset.zip", quiet = TRUE)

# 2) unzip the data file
  unzip("UCI HAR Dataset.zip") 

# 3) read in the txt files X_train, X_test, y_train, y_test, features, subjects
    # UCI HAR Dataset.zip needs to have been unziped in the working directory
  filepath<-paste0(getwd(),"/UCI HAR Dataset/")
  X_train<-read.table(file=paste0(filepath,"train/X_train.txt"))
  X_test<-read.table(file=paste0(filepath,"test/X_test.txt"))
  subject_train<-read.table(file=paste0(filepath,"train/subject_train.txt"),colClasses="character")
  subject_test<-read.table(file=paste0(filepath,"test/subject_test.txt"), colClasses="character")
  features<- read.table(file=paste0(filepath,"features.txt"))
  y_train<-read.table(file=paste0(filepath,"train/y_train.txt"))
  y_test<-read.table(file=paste0(filepath,"test/y_test.txt"))
  activity<-read.table(file=paste0(filepath,"activity_labels.txt"))

# 4) bind test and training into one dataset 
  train_data<-cbind(subject_train,X_train,y_train)
  test_data<-cbind(subject_test,X_test,y_test)
  data<-rbind(train_data,test_data)

# 5) labels the data set with descriptive variable names 
  names(data)<-c("Subject",as.character(features[,2]), "Activity_ID")

# 6) name the two activity columns and merge activity into dataset 
  names(activity)<-c("Activity_ID","Activity")
  data<-merge(activity, data,by="Activity_ID")

# 7) refine data to Subject, activty, and columes with mean and std information
  means<-as.character(features$V2[grep("mean",features$V2)])
  stds<-as.character(features$V2[grep("std",features$V2)])
  refined.data<-subset(data, select = c("Subject","Activity",means,stds))

# 8) generate averages of variables by subject and activty
  final.data<-aggregate(.~Subject+Activity,data=refined.data,FUN=mean)
  final.data$Subject<-as.factor(final.data$Subject)
# 9) export final data table
  write.table(final.data,file="FinalData.txt",row.name=FALSE)

# to read in final data table
  final.data <- read.table(file=paste0(filepath,"FinalData.txt"), header = TRUE)
  View(final.data)

###########################################################################################

# codebook descriptions
description <- names(final.data)
description <- gsub("Subject", " (factor): The 30 individual test subjects", description)
description <- gsub("Activity", " (charater): The 6 activities assessed, 1 - WALKING, 2 - WALKING_UPSTAIRS, 3 - WALKING_DOWNSTAIRS, 4 - SITTING, 5 - STANDING, 6 - LAYING", description)

description <- gsub("tBody", " (numeric): Time - body acceleration - ", description)
description <- gsub("fBodyBody", " (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - ", description)
description <- gsub("fBody", " (numeric): Frequency - Fast Fourier Transformed (FFT) - Body acceleration - ", description)
description <- gsub("tGravity", " (numeric): Time - Gravity acceleration - ", description)

description <- gsub("Acc", "measurement of the accelerometer", description)
description <- gsub("Gyro", "measurment of the gyroscope", description)

description <- gsub("Jerk", " the jerk signal (as given by the body linear acceleration and angular velocity in time)", description)
description <- gsub("Mag", " the magnitude of the signal (as calculated using the Euclidean norm)", description)

description <- gsub("-mean", " as a mean", description)
description <- gsub("-meanFreq", " as a weighted average to obtain a mean frequency", description)
description <- gsub("-std", " as a standard deviation", description)

description <- gsub("-X", " - X plain", description)
description <- gsub("-Y", " - Y plain", description)
description <- gsub("-Z", " - Z plain", description)

description <- gsub("\\(\\)","",description)

a<-cbind(1:81,names(final.data),description)
a<-paste(a[,1],". ",a[,2],a[,3], sep="")
write.table(a, file="description.txt", row.names=FALSE, col.names=FALSE, quote=FALSE)


