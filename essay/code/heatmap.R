heatmap <- function(merger_df) {
    cor_matrix <- cor(merger_df)
    melted_cor <- melt(cor_matrix)

    ggplot(data = melted_cor, aes(x = Var1, y = Var2, fill = value)) +
        geom_tile() +
        scale_fill_gradient2(low = "darkmagenta", mid = "bisque", high = "red3", midpoint = 0) +
        labs(x = "Variable 1", y = "Variable 2", title = bquote(bold("Correlation Heatmap"))) +
        theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
              axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
}

