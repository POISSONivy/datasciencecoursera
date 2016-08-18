corr <- function(directory, threshold = 0){
  df <- complete(directory)
  ids= df[df['nocobs']>threshold,]$id
  corr = numeric()
  for(i in ids){
    readinput = read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep=""))
    dff=readinput[complete.cases(readinput),]
    corr=c(corr, cor(dff$sulfate, dff$nitrate))
  }
  return(corr)
}
source("corr.R")
source("complete.R")
correl <- corr(specdata, 150)
head(correl)