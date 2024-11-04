
complete <- function(directory, id = 1:332){
    lista <- list.files(directory, full.names = TRUE) ##Creating a list of the files
    DF <- data.frame() ## Creating an empty DF to fill later
    
    for (i in id) {
        data1 <- read.csv(lista[i]) ##Reading the files according to i
        nobs <- sum(complete.cases(data1[i])) ##adding the # of observations
        DF <- rbind(DF, data.frame(i, nobs)) ## Creating the dataframe with 2 columns "i" and "nobs"
    }
    colnames(DF) <- c("id", "nobs")
    return(DF)
}
