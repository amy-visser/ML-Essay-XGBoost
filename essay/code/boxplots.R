library(ggplot2)

# Create the boxplot
ggplot(merger_df, aes(x = Approval_Status, y = Phase)) +
    geom_boxplot(fill = "lightblue", color = "black") +
    labs(x = "Approval Status", y = "Phase", title = "Boxplot of Phase by Approval Status")
