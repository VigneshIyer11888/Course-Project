***
# Getting and Cleaning data - Course Project
***

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

You will be required to submit: 

1) a tidy data set as described below

2) a link to a Github repository with your script for performing the analysis

3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

4) You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

***
# Solution Files description
***

1. run_analysis.R contains the following code
    
    # 1. Fetching dataset from the Web and unzipping the file to a 
    # destination directory
    # 
    # if(!(file.exists("../Course Project"))){
    #   dir.create("../Course Project")
    # }
    # datafile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    # download.file(datafile, destfile = "../Course Project/UCIHARDataset.zip")
    # unzip(zipfile = "../Course Project/UCIHARDataset.zip", exdir = "./UCIHARDataset")
    # 
    # 2. Merging data from the train and the test datasets to create 
    # one data set. (In the following the word data means both train and test). 
    # The x_data.txt, y_data.txt, subject_data.txt should be binded by row. 
    # You would need to set the working directory using the setwd() to the 
    # folder containing the datasets as we would need to perform operations 
    # on these datasets.
    # 
    # setwd("C:/Users/My Pc/Documents/GitHub/Course Project/UCIHARDataset/UCI HAR Dataset")
    # library(plyr)
    # library(data.table)
    # subjectTrain_data = read.table('./train/subject_train.txt',header=FALSE)
    # xTrain_data = read.table('./train/x_train.txt',header=FALSE)
    # yTrain_data = read.table('./train/y_train.txt',header=FALSE)
    # 
    # subjectTest_data = read.table('./test/subject_test.txt',header=FALSE)
    # xTest_data = read.table('./test/x_test.txt',header=FALSE)
    # yTest_data = read.table('./test/y_test.txt',header=FALSE)
    # 
    # xDataSet_merged <- rbind(xTrain_data, xTest_data)
    # yDataSet_merged <- rbind(yTrain_data, yTest_data)
    # subjectDataSet_merged <- rbind(subjectTrain_data, subjectTest_data)
    # 
    # dim(xDataSet_merged)
    # dim(yDataSet_merged)
    # dim(subjectDataSet_merged)
    # 
    # 3. The next operation is to load the feature and activity Info, this can
    # be considered as a sub operation to step 2 but I'm just giving it under       # a separate point.
    # 
    # 
    # #activity Information
    # activityNames <- read.table(
    #   file.path("../Course Project/UCIHARDataset/UCI HAR Dataset", 
    #             "activity_labels.txt"),
    #             head=FALSE)
    # 
    # # Feature Information
    # featuresNames <- read.table(
    #   file.path("../Course Project/UCIHARDataset/UCI HAR Dataset", 
    #             "features.txt"),
    #             head=FALSE)

