#
# Downloads and unzips UCI HAR data set for the course project.
#
get_dataset <- function()
{
    # Download the data set archive if not present
    if(!file.exists("UCI_HI_Dataset.zip"))
    {
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                      "UCI_HI_Dataset.zip",
                      method="curl")
        
        # store download timestamp
        fd<-file("UCI_HI_Dataset_download_timestamp.txt")
        writeLines(date(), fd)
        close(fd)
    }
    
    # Unzip the archive data if not present
    if(!file.exists("UCI HAR Dataset"))
    {
        unzip("UCI_HI_Dataset.zip")
    }
}

# Run the download upon loading of this script
get_dataset()