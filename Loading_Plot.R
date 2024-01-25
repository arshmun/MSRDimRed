# Function to visualise selected principal component loadings in single plot
plot_loadings <- function(loadings, selected_components = c(1, 2, 3, 4)) {
  num_vars <- nrow(loadings)
  
  # Create a matrix to store selected loadings
  selected_loadings <- loadings[, selected_components]
  
  # Set up the layout for the bar plot
  par(mfrow = c(1, 1))
  
  # Create bar plot for selected loadings
  barplot(selected_loadings, beside = TRUE, col = rainbow(num_vars),
          names.arg = rownames(loadings), xlab = '', ylab = 'Loadings',
          main = 'Selected PC Loadings')
}

# Function to visualise selected principal component loadings in separate plots
# plot_loadings <- function(loadings, selected_components = c(1, 2, 3, 4)) {
#   num_vars <- nrow(loadings)
#   
#   # Set up the layout for subplots
#   num_plot_components <- length(selected_components)
#   num_rows <- ceiling(num_plot_components / 2)
#   num_cols <- ifelse(num_plot_components > 1, 2, 1)
#   par(mfrow = c(num_rows, num_cols))
#   
#   # Plot loadings for selected components
#   for (i in selected_components) {
#     plot(loadings[, i], type = 'h', xlab = 'Variable', ylab = 'Loading',
#          main = paste('PC', i, 'Loadings'), xlim = c(1, num_vars))
#     abline(h = 0, col = 'gray', lty = 'dashed')
#   }
#   
#   # Reset the layout
#   par(mfrow = c(1, 1))
# }