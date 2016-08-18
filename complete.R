getwd()
complete <- function(directory, id=1:332){
  specdata="C:/Users/pradeep/Documents/Coursera/Programming assignment 1/specdata/"
  nocobs=numeric()
  for(i in id){
    newinputfile=read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep=""))
    nocobs=c(nocobs,sum(complete.cases(newinputfile)))
  }
  newdataframe=data.frame(id,nocobs)
  return(newdataframe)
}