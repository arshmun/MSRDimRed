# Function to create a PVE plot for selecting the number of principal components

pve_plot <- function(cumul_var, selected_components, threshold = 0.8) {
  opar <- par(no.readonly = TRUE)
  plot(
    cumul_var[1:selected_components],
    ylim = c(0, 1),
    xlab = 'Number of Principal Components',
    ylab = 'Cumulative Variance',
    pch = 20,
    col = 'blue',
    type = 'b', # 'b' for both points and lines connecting them
    main = 'PVE Plot'
  )
  abline(h = threshold, col = 'red', lty = 'dashed')
  par(opar)
  
  # Find the number of components that cross the threshold
  num_components <- sum(cumul_var < threshold) + 1
  cat('Number of components capturing', threshold * 100, '% variance:', num_components, '\n')
  
  return(num_components)
}





# Function to create a PEV plot for selecting the number of principal components
# pev_plot <- function(cumul_var, threshold = 0.8) {
#   opar <- par(no.readonly = TRUE)
#   plot(
#     cumul_var,
#     ylim = c(0, 1),
#     xlab = 'Number of Principal Components',
#     ylab = 'Cumulative Variance',
#     pch = 20,
#     col = 'blue',
#     type = 'b', # 'b' for both points and lines connecting them
#     main = 'Scree Plot'
#   )
#   abline(h = threshold, col = 'red', lty = 'dashed')
#   par(opar)
#   
#   # Find the number of components that cross the threshold
#   num_components <- sum(cumul_var < threshold) + 1
#   cat('Number of components capturing', threshold * 100, '% variance:', num_components, '\n')
#   
#   return(num_components)
# }
