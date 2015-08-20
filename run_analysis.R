# Merges the training and the test sets to create one data set.
xTrainData <- read.table('./UCI HAR Dataset/train/X_train.txt')
xTestData <- read.table('./UCI HAR Dataset/test/X_test.txt')
X <- rbind(xTrainData, xTestData)

SubTrainData <- read.table('./UCI HAR Dataset/train/subject_train.txt')
SubTestData <- read.table('./UCI HAR Dataset/test/subject_test.txt')
Subject <- rbind(SubTrainData, SubTestData)

yTrainData <- read.table('./UCI HAR Dataset/train/y_train.txt')
yTestData <- read.table('./UCI HAR Dataset/test/y_test.txt')
Y <- rbind(yTrainData, yTestData)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
Feat <- read.table("./UCI HAR Dataset/features.txt")
Measurements <- grep("-mean\\(\\)|-std\\(\\)", Feat[, 2])
xMeasure <- X[, Measurements]

# Uses descriptive activity names to name the activities in the data set
names(xMeasure) <- Feat[Measurements, 2]
names(xMeasure) <- tolower(names(xMeasure)) 
names(xMeasure) <- gsub("\\(|\\)", "", names(xMeasure))

Act <- read.table("./UCI HAR Dataset/activity_labels.txt")
Act[, 2] <- tolower(as.character(Act[, 2]))
Act[, 2] <- gsub("_", "", Act[, 2])

Y[, 1] = Act[Y[, 1], 2]
colnames(Y) <- "Activity"
colnames(Subject) <- "Subject"

# Appropriately labels the data set with descriptive activity names.
Data1 <- cbind(Subject, xMeasure, Y)
str(Data1)
write.table(Data1, "firstset.txt", row.names = FALSE)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Final <- aggregate(x=Data1, by=list(Act=Data1$activity, Subject=Data1$subject), FUN=mean)
Final <- Final[, !(colnames(Final) %in% c("Subject", "Activity"))]
str(Final)
write.table(Final, "tidydataset.txt", row.names = F)