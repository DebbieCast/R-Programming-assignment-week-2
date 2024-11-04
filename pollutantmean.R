setwd("~/Data Science Specialization/2. R Programming/R-Programming-assignment-week-2") 
## Changing the Wd to be the folder were the folder of CSV files are


pollutantmean <- function(directory, pollutant, id = 1:332) {   ##Creating the function as requeste
  directory <- paste(getwd(), "/", directory, "/", sep = "") 
  ##Defining the argument to get current working directory + the folder were the 
  ## CSV files are stored called "specdata"
  lista <- list.files(directory) ## creating a list with these files
  
  for (i in id) {
    
  } 
}  