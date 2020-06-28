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
