
chisquaretests <- function(mergerdf){


c1 <- chisq.test(merger_df$Phase, output_vector)
print(c1)

c2 <- chisq.test(merger_df$Counterfactual_Assess, output_vector)
print(c2)


c3 <- chisq.test(merger_df$Overlap_Type, output_vector)
print(c3)

c4 <- chisq.test(merger_df$Barriers_Assess, output_vector)
print(c4)

c5 <- chisq.test(merger_df$Size, output_vector)
print(c5)

c6 <- chisq.test(merger_df$Year, output_vector)
print(c6)

}