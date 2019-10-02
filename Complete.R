#Write a function that reads a directory full of files and
#reports the number of completely observed cases in each 
#data file. The function should return a data frame where 
#the first column is the name of the file and the second 
#column is the number of complete cases.

# 'directory' is location of the CSV files
# 'id' is the id of each file
complete <- function(directory, id = 1:332) {
  

  #Step 1. list all the files inside directory
  csv_files <- list.files(directory, full.names = TRUE)
  
  
  
  #Step 2. initialize the data frame 'z' with 0 columns and 0 rows
    z <- data.frame()
  
  
  
  # Step 3. loop for each file id
  
  # 3.1 Read the file
  
  # 3.2 count the number of complete cases 'nobs',
  
  # 3.3 make a new dataframe 'y' to show the number of observations
  
  # 3.4 bind it to our data frame 'z'
  
  
  
  for (i in id) {
    
    
    x <- read.csv(csv_files[i])
    
    nobs <- sum(complete.cases(x))
    
    y <- data.frame(i, nobs)
    
    z <- rbind(z, y)
    
  }
  
  
  
  
  
  # Step 4. label column names of our data frame 'z'
  colnames(z) <- c("id", "nobs")
  
  
  
  # 5. Return data frame 'z'
  return(z)
  
}