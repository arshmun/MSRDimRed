
pca_biplot <- function(pca_result, scale = 0, col = c('grey40', 'orange')) {
  biplot <- fviz_pca_biplot(pca_result, xlab = 'PC1', ylab = 'PC2', select.var = list(contrib = 100))
  return(biplot)
}
