

cornerFn <- function(m, v){
  row <- v[1];
  col <- v[2];
  
  return(m[1:row, 1:col])
}

corner <- function(m, v){
  out <- tryCatch(
    {
      cornerFn(m, v);
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


#test 

m <- matrix(
  data = c(1,7,8,9,2,4,1,3,9,3,7,4,1,0,3,8),
  nrow = 4,
  byrow = TRUE
)

corner(m, c(2,3))