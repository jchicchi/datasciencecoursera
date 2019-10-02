#Write a function named 'pollutantmean' that calculates 
#the mean of a pollutant (sulfate or nitrate) across a 
#specified list of monitors. The function 'pollutantmean' 
#takes three arguments: 'directory', 'pollutant', and 'id'. 
#Given a vector monitor ID numbers, 'pollutantmean' reads 
#that monitors' particulate matter data from the directory 
#specified in the 'directory' argument and returns the 
#mean of the pollutant across all of the monitors, 
#ignoring any missing values coded as NA


#Step 0- set Working directory to source file location
pollutantmean <- function(directory, pollutant, id = 1:332) {
  
#Step 1. list all the files inside directory
csv_files <- list.files(directory, full.names = TRUE) 
  
  
  
#Step 2. initialize the data frame with 0 columns and 0 rows
z <- data.frame()
  
  
  
#Step 3. loop for each file, read it and bind it to the 
#data frame

  for (i in id) {
    
    x <- read.csv(csv_files[i])
    
    z <- rbind(z, x)
    
  }

  
  
#Step 4. compute the mean for a given pollutant, 
#ignoring NA values by using the na.rm= TRUE argument)
  
  
  return(mean(z[, pollutant], na.rm = TRUE))
  
}