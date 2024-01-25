# function to extract coordiantes
extract_calpha_coords <- function(trj, inds) {
  ca_coords <- trj$coord[inds$atom, , ]
  return(ca_coords)
}

