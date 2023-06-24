
distdecision <- function(data){

library(ggplot2)

# Convert the variable to a factor with all categories
data$Approval_Status <- factor(data$Approval_Status)

# Count the frequencies of each category
category_counts <- table(data$Approval_Status)

# Create a data frame for plotting
plot_data <- data.frame(Category = names(category_counts),
                        Frequency = as.numeric(category_counts))

# Create the bar plot using ggplot
ggplot(plot_data, aes(x = Category, y = Frequency, fill = Category)) +
    geom_bar(stat = "identity", color = "grey", size = 0.1) +
    labs(title = "Approval Status Bar Plot",
         x = "Approval Status", y = "Frequency") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1),
          panel.background = element_rect(fill = "white"),
          legend.position = "none",
          plot.title = element_text(face = "bold"))


}