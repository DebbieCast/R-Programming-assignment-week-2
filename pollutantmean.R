setwd("~/Data Science Specialization/2. R Programming/R-Programming-assignment-week-2") 
## Changing the Wd to be the folder were the folder of CSV files are


pollutantmean <- function(directory, pollutant, id = 1:332) {   ##Creating the function as requeste
  
  lista <- list.files(directory, full.names = TRUE) ## creating a list with these files
  
  DF <- data.frame() ##creating empty data frame to fill with the for function
  
  for (i in id) {
      DF <- rbind(DF, read.csv(lista[i]))
      ## Reading the directory with the defined ID and creating a Dataframe
  }  
  result <- mean(DF[ ,pollutant], na.rm = TRUE)
  return(result)
}

pollutantmean("specdata", "sulfate", 1:10) ## Testing