#
# Performs the analysis required for course project: creating a tidy data set
# from merged UCI HAR train and test data.
# 
# Tidy data set is written to UCI_HAR_Tidy_Dataset.txt in your working directory.
#
# Preconditions:
#  - Requires unzipped UCI HAR data in your working directory
#
# See CodeBook.md for tidy data set details.
# See README.md for execution instructions.
#
run_analysis <- function()
{
    # Read in the dataset column labels
    features <- read.table(file="UCI HAR Dataset/features.txt")
    
    # Create a vector indicating whether the features string names contain
    # mean() or std(). Only measurements that have a mean and stdev are of
    # interest. 
    meanOrStdev <- grepl('(mean|std)\\(\\)(-[XYZ])?$',features[,2])
    
    # Function to load a data set.
    #
    # Both 'test' and 'train' data set files are similarly named and located.
    # This function will:
    #  - Load the data set using column labels from features
    #  - Remove all columns that do not contain mean() or std()
    #  - Load the activities and add them as a factor to the data set
    #  - Load the subjects and add them to the data set
    loadDataSet <- function(name)
    {
        # Create file name variables based on name parameter
        X.txt = sprintf("UCI HAR Dataset/%s/X_%s.txt",name,name)
        y.txt = sprintf("UCI HAR Dataset/%s/y_%s.txt",name,name)
        subject.txt = sprintf("UCI HAR Dataset/%s/subject_%s.txt",name,name)
               
        # Read in the data set
        data <- read.table(X.txt,
                           col.names=features[,2])
        
        # Remove column that are not of interest
        data <- data[,meanOrStdev]
        
        # Read the activities
        activities <- read.table(y.txt,
                                 col.names=c("Activity"))
        
        # Add activity as a factor with meaningful names to the data frame
        data$Activity <- factor(activities$Activity,
                                1:6,
                                labels=c("WALKING",
                                         "WALKING_UPSTAIRS",
                                         "WALKING_DOWNSTAIRS",
                                         "SITTING",
                                         "STANDING",
                                         "LAYING"))
        
        # Read the subject ids
        subjects <- read.table(subject.txt,
                               col.names=c("Subject"))
        
        # Add subject id to the data frame
        data$Subject <- subjects$Subject
        
        # Return the data frame
        data
    }
    
    # Load train data set
    trainData = loadDataSet("train")
    
    # Load test data set
    testData = loadDataSet("test")
    
    # Merge the two data sets together
    mergedData <- rbind(trainData,testData)
    
    # Clean up the column labels - R turns non-allowable characters 
    # into '.'. The column names in features.txt contain "()-" which
    # are turned into '.'s. 
    
    # Substitute one or more '.' with a single '_'
    names(mergedData) <- gsub("\\.+", "_", names(mergedData))
    
    # Remove any trailing '_'s
    names(mergedData) <- gsub("_$", "", names(mergedData))
    
    # Load plyr package if not yet loaded
    require(plyr)
    
    # Subset the data set first by Subject then by Activity and perform a
    # column wise mean. Returns a data frame with 6 rows per subject, 1 for each
    # activity containing the means of the measurements for that
    # subject/activity pair.
    data <- ddply(mergedData,c("Subject","Activity"),colwise(mean))
    
    # Write out the data set
    write.table(data,"UCI_HAR_Tidy_Dataset.txt",row.name=FALSE)
}

# Run the analysis upon loading of this script
run_analysis()

