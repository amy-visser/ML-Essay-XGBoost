
importance_matrix <- function(merger_df){

#get the feature real names
names <- dimnames(test_data[[target]])



# Compute feature importance matrix
importance_matrix <- xgb.importance(names, model = model)

# Plot the feature importance graph
xgb.plot.importance(importance_matrix[1:10,],
                    col = c( "coral", "lightgray"))

}