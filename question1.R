#question1


mylagSingleFn <- function(v1,k){
  return(c(rep(NA, k), v1)[1 :length(v1)])
}


mylagSingleLabelFn <- function(k){
  return(paste("L", k, sep=""))
}


mylagFn <- function(v1, v2){
  res <- v1;
  label_res <- "L0"
  for(n in 1 : length(v2)){
    res <- cbind(res,mylagSingleFn(v1, v2[n]))
    label_res <- cbind(label_res, mylagSingleLabelFn(v2[n]))
  }
  
  colnames(res) <- label_res
  
  return(res)
}


mylag <- function(v1, v2){
  out <- tryCatch(
    {
      mylagFn(v1, v2);
    },
    error=function(e) {
      message('Caught an error!')
      print(e)
    },
    warning=function(w) {
      message('Caught an warning!')
      print(w)
    }
  )    
  return(out)
}


mylag( c(1, 5, 8, 4), c(1, 3))

