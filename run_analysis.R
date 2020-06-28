# 1. Fetching dataset from the Web and unzipping the file to a 
# destination directory

if(!(file.exists("../Course Project"))){
  dir.create("../Course Project")
}
datafile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(datafile, destfile = "../Course Project/UCIHARDataset.zip")
unzip(zipfile = "../Course Project/UCIHARDataset.zip", exdir = "./UCIHARDataset")

# 2. Merging data from the train and the test datasets to create 
# one data set. (In the following the word data means both train and test). 
# The x_data.txt, y_data.txt, subject_data.txt should be binded by row. 
# You would need to set the working directory using the setwd() to the 
# folder containing the datasets as we would need to perform operations 
# on these datasets.
setwd("C:/Users/My Pc/Documents/GitHub/Course Project/UCIHARDataset/UCI HAR Dataset")
library(plyr)
library(data.table)
subjectTrain_data = read.table('./train/subject_train.txt',header=FALSE)
xTrain_data = read.table('./train/x_train.txt',header=FALSE)
yTrain_data = read.table('./train/y_train.txt',header=FALSE)

subjectTest_data = read.table('./test/subject_test.txt',header=FALSE)
xTest_data = read.table('./test/x_test.txt',header=FALSE)
yTest_data = read.table('./test/y_test.txt',header=FALSE)

xDataSet <- rbind(xTrain_data, xTest_data)
yDataSet <- rbind(yTrain_data, yTest_data)
subjectDataSet <- rbind(subjectTrain_data, subjectTest_data)
dim(xDataSet)