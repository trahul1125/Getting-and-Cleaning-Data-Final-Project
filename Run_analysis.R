library(dplyr)
library(data.table)
filename<-"Getting_and_Cleaning_Data_Final_Proj.zip"


if(!file.exists(filename)){
  
  fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method = "curl")
}

if(!file.exists("UCI HAR Dataset")){
  
  unzip(filename)
}

##we are trying to read the name of features and activities
##into appropriate variables
NameofFeatures<-read.table("UCI HAR Dataset/features.txt")
ActivityLabels<-read.table("UCI HAR Dataset/activity_labels.txt")


##since training and test data are split up into subject,activity and files... we read them..


##reading training data
TrainDsubject<-read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)

##Why header is set to false

##a logical value indicating whether the file contains the names of the variables as its first line. If missing, 
##he value is determined from the file format: header is set to TRUE if and only if the first row 
##contains one fewer field than the number of columns.


TrainDactivity<-read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE)

TrainDfeatures<-read.table("UCI HAR Dataset/train/x_train.txt",header=FALSE)


##reading test data

TestDsubject<-read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)

TestDactivity<-read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)

TestDfeatures<-read.table("UCI HAR Dataset/test/x_test.txt",header=FALSE)


subject<-rbind(TrainDsubject,TestDsubject)

activity<-rbind(TrainDactivity,TestDactivity)

features<-rbind(TrainDfeatures,TestDfeatures)

head(subject)
##100% correct till here 


##now we can name the columns

names(subject)<-c("SUBJECT")
names(activity)<-c("ACTIVITY")

featureNamesData<-read.table("UCI HAR Dataset/features.txt",head = FALSE)
names(features)<-featureNamesData$V2


TotalData<-cbind(features,activity,subject)
head(TotalData)
##we are now extracting the cols that have mean/std in them

Reqdata<-featureNamesData$V2[grep(".*mean.*|.*std.*",featureNamesData$V2)]

head(TotalData,10)


##we subset TotalData by way of names of features
selectNames<-c(as.character(Reqdata),"SUBJECT","ACTIVITY")
TotalData<-subset(TotalData,select=selectNames)

str(TotalData)


##Part3
##now we use descriptive activity names to the name the activities in the dataset
##we read activity_labels and factorize it(variable=activity)

TotalData$ACTIVITY <-ActivityLabels[TotalData$ACTIVITY, 2]



##Looking at the names in TotalData, we can replace some ambiguous words like BodyBody,Mag,Gyro to name a few..

names(TotalData)<-gsub("Mag","Magnitude",names(TotalData))

names(TotalData)<-gsub("Acc","Accelerometer",names(TotalData))

names(TotalData)<-gsub("Freq","Frequency",names(TotalData))

names(TotalData)<-gsub("Gyro","Gyroscope",names(TotalData))

names(TotalData)<-gsub("BodyBody","Body",names(TotalData))

names(TotalData)<-gsub("std","Standard-Deviation",names(TotalData))


FCleanData<-aggregate(. ~SUBJECT + ACTIVITY, TotalData, FUN="mean")

FCleanData<-FCleanData[order(FCleanData$SUBJECT,FCleanData$ACTIVITY),]
write.table(FCleanData,file="tidy_data.txt",row.names = FALSE)

