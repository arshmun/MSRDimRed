# Function to select c-alpha atoms
select_calpha <- function(pdb_obj) {
  inds <- bio3d::atom.select(pdb_obj, "calpha")
  return(inds)
}
