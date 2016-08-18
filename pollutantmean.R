getwd()
pollutantmean <- function(directory, pollutant, id=1:332){
  specdata <- "C:/Users/pradeep/Documents/Coursera/Programming assignment 1/specdata/"
  data <- numeric()
  for(i in id){
    inputdata = read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv", sep=""))
    data=c(data,inputdata[[pollutant]])
  }
  meanpollutant=mean(data,na.rm=TRUE)
  return(meanpollutant)
}
