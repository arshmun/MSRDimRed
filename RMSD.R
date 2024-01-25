# Function to compute RMSD
compute_rmsd <- function(coords) {
  rmsd_values <- bio3d::rmsd(coords)
  return(rmsd_values)
}

