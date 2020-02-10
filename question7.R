
#question7

ppv <- function(sensitivity,specificity,prevalence){
  return(
    sensitivity*prevalence/((sensitivity*prevalence)+((1-specificity)*(1-prevalence)))
  )
}


#test
ppv(0.5,0.4,0.5)