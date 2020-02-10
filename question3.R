#question3

Hogwarts <- function(){
  continue = TRUE
  ans_list <-c("Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin")
  
  while (continue) {
    
    response = readline(prompt = "Enter response (q to quit) >")
    
    continue = (response != "q")
    
    if(continue == TRUE){
      print(sample(ans_list, 1))
    }
  }
}


#test
Hogwarts()