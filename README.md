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

1. run_analysis.R contains the following code which

    1. Fetching dataset from the Web and unzipping the file to a
    destination directory
    
    2. Merges data from the train and the test datasets to create
    one data set. (In the following the word data means both train and test).
    The x_data.txt, y_data.txt, subject_data.txt should be binded by row.
    You would need to set the working directory using the setwd() to the
    folder containing the datasets as we would need to perform operations
    on these datasets.
    
        1. The next operation is to load the feature and activity Info.

        2. Extract only the measurements on the mean and standard deviation for            each measurement.
        
        3. Use descriptive activity names to name the activities in the data               set.
        
        4. Generate Tidy dataset and save it in a file "TidyData.txt" 