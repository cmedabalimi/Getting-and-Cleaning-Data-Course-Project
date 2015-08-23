library(dplyr)
if (!require("data.table")) { 
  install.packages("data.table") 
} 

if (!require("reshape2")) { 
  install.packages("reshape2") 
} 
require("data.table") 
require("reshape2") 
# get the file url
if(!file.exists("./Getting-and-Cleaning-Data-Course-Project")){dir.create("./Getting-and-Cleaning-Data-Course-Project")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./Getting-and-Cleaning-Data-Course-Project/Dataset.zip")
unzip(zipfile="./Getting-and-Cleaning-Data-Course-Project/Dataset.zip",exdir="./Getting-and-Cleaning-Data-Course-Project")
path_rf <- "./Getting-and-Cleaning-Data-Course-Project/UCI HAR Dataset/"
#The files that will be used to load data are listed as follows:

#subject_test.txt,X_test.txt,y_test.txt,subject_train.txt,X_train.txt,y_train.txt
#Values of Varible Activity consist of data from "Y_train.txt" and "Y_test.txt"
#values of Varible Subject consist of data from "subject_train.txt" and subject_test.txt"
#Values of Varibles Features consist of data from "X_train.txt" and "X_test.txt"
#Names of Varibles Features come from "features.txt"
#levels of Varible Activity come from "activity_labels.txt"
#Read data from the files into the variables

#Read the Activity files

dataActivityTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)

#Read the Subject files

dataSubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)

#Read Fearures files

dataFeaturesTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

#A) Merges the training and the test sets to create one data set
#1.Concatenate the data tables by rows
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)
#2. set names to variables
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2
#3.Merge columns to get the data frame Data for all data
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)

#B) Extracts only the measurements on the mean and standard deviation for each measurement
#1.Subset Name of Features by measurements on the mean and standard deviation
#i.e taken Names of Features with "mean()" or "std()"
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
#2.Subset the data frame Data by seleted names of Features

selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

#C) Uses descriptive activity names to name the activities in the data set
#1.Read descriptive activity names from "activity_labels.txt"
activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)

#D) Appropriately labels the data set with descriptive variable names
#global replacements.
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

#E) Creates a second,independent tidy data set and ouput it

#In this part,a second, independent tidy data set will be created with the average of each variable for each activity and each subject based on the data set in step 4.

library(plyr);
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "TidyDataSet.txt",row.name=FALSE)
#Prouduce Codebook. Click 'File' New file - R Markdown.
library(knitr)
knit2html("codebook.Rmd");

