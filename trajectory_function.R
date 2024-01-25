# Define a function to read the xtc files
# read_xtc <- function(xtc_file, pdb_file) {
#   trj <- read.trj(trjfile = xtc_file, topfile = pdb_file)
#   return(trj)
# }

# Define a function to read the xtc files
read_xtc <- function(xtc_file, pdb_file) {
  trj <- read.trj(trjfile = xtc_file, topfile = pdb_file)
  pdb <- read.pdb(pdb_file)
  list(trj = trj, pdb = pdb)  # Return both trj and pdb as a list
}
