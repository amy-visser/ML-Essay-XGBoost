
baseline_acc <- function(merger_df){

target <- merger_df$Approval_Status

# Calculate the majority class
majority_class <- names(table(target))[which.max(table(target))]

# Calculate the proportion of the majority class
baseline_accuracy <- sum(target == 1) / length(target)

# Print the baseline accuracy
print(baseline_accuracy)

# Create a data frame for plotting
plot_data <- data.frame(Type = c("Baseline Accuracy", "Incorrect"),
                        Proportion = c(baseline_accuracy, 1 - baseline_accuracy))

# Create the bar plot using ggplot2
ggplot(plot_data, aes(x = Type, y = Proportion, fill = Type)) +
    geom_bar(stat = "identity", width = 0.5) +
    ylim(0, 1) +
    ylab("Proportion") +
    ggtitle("Baseline Accuracy") +
    theme(plot.title = element_text(face = "bold")) +
    theme_minimal() +
    theme(legend.position = "topright",
          plot.title = element_text(face = "bold")) +
    geom_text(aes(label = sprintf("%.2f", Proportion)), position = position_dodge(width = 0.5), vjust = -0.5)

}