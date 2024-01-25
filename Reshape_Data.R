# Function to reshape the data
# reshape_data <- function(coords, inds) {
#   # Extract coordinates of selected atoms and reshape them
#   coords_reshaped <- array(coords, dim = c(nrow(coords), ncol(coords)*dim(coords)[3]))
#   return(coords_reshaped)
# }

ca_reshape <- function(nxyzt) { 
  n <- dim(nxyzt)[1]   
  t <- dim(nxyzt)[3]   
  xyznt <- aperm(nxyzt, c(2,1,3))   
  dim(xyznt) <- c(3 * n, t)   
  tnxyz <- aperm(xyznt, c(2,1))   
  return(tnxyz)
}