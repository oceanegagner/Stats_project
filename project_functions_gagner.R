#Do an evaluation of the model by predicting the correct analysis based on the results of p-values
#Level of confidence = 0.95
#
#Arguments :
#p_value : float coresponding to the p_value of the model
#
#Return value :
#String H1 or H0


eval1 <- function(p_value){
  if (p_value < 0.05) {
    return ("H1")
  }else{
    return ("H0")
  }
}

#Do an evaluation of the model by predicting the correct analysis based on the results of p-values
#Level of confidence = 0.999
#
#Arguments :
#p_value : float coresponding to the p_value of the model
#
#Return value :
#String H1 or H0

eval2 <- function(p_value){
  if (p_value < 0.001) {
    return ("H1")
  }else{
    return ("H0")
  }
}

#Obtains p_value from a model
#
#Arguments:
#model : linear model obtained with lm() function
#
#Return value
#p_value : float

pvalues <- function (model) {
  if (class(model) != "lm") {
    stop("Not linear model")
  } 
  f <- summary(model)
  pvalue <- f[[4]][,4][2]
  return(pvalue)
}



