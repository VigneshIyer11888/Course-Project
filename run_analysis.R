if(!(file.exists("../Course Project"))){
  dir.create("../Course Project")
}
datafile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(datafile, destfile = "../Course Project/UCIHARDataset.zip")