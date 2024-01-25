# function to perform PCA

perform_pca <- function(reshaped_coords) {
  pca_result <- prcomp(reshaped_coords)
  return(pca_result)
}
