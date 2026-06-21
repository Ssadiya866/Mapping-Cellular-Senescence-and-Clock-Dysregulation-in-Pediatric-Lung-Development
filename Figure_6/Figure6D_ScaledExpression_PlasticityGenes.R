# Figure 6D-Scaled Expression of Plasticity-Associated Genes
# Plasticity-associated genes adapted from He et al.
# Expression evaluated across developmental stages and PT-BPD.

library(Seurat)
library(dplyr)
library(ggplot2)
library(pheatmap)

# Load integrated Harmony-corrected and Azimuth-annotated Seurat object
lungQuery <- readRDS("path_to_object/lungQuery_After_Az_Normalized.rds")

DefaultAssay(lungQuery) <- "RNA"

# Plasticity-associated genes adapted from He et al.
plasticity_genes <- c(
  "KLF4",
  "POU5F1",
  "MYC",
  "MYCBP2",
  "SOX2",
  "HDAC2",
  "CTNNB1",
  "EP300",
  "CEBPB",
  "ID2",
  "KMT2A",
  "KRT7",
  "KRT8"
)

plasticity_genes <- plasticity_genes[
    plasticity_genes %in% rownames(lungQuery)
]
# Developmental group order
group_order <- c(
  "PT_NEWBORN",
  "FT_NEWBORN",
  "INFANT",
  "Children",
  "Adolescent",
  "Young_Adult",
  "PT_BPD"
)

lungQuery$Donor_Group <- factor(
  lungQuery$Donor_Group,
  levels = group_order
)

# Calculate average expression across developmental groups
avg_expr <- AverageExpression(
  lungQuery,
  assays = "RNA",
  features = plasticity_genes,
  group.by = "Donor_Group"
)$RNA

avg_expr <- avg_expr[
  plasticity_genes,
  group_order[group_order %in% colnames(avg_expr)],
  drop = FALSE
]

# Z-score scaling
avg_expr_scaled <- t(scale(t(avg_expr)))

avg_expr_scaled[is.na(avg_expr_scaled)] <- 0

# Cap extreme values for visualization
avg_expr_scaled[avg_expr_scaled > 2] <- 2
avg_expr_scaled[avg_expr_scaled < -2] <- -2

# Export source data
write.csv(
  avg_expr_scaled,
  "Figure6D_PlasticityGenes_ScaledExpression_ZscoreMatrix.csv",
  quote = FALSE
)

# Generate scaled expression heatmap
pheatmap(
  avg_expr_scaled,
  cluster_rows = FALSE,
  cluster_cols = FALSE,
  border_color = NA,
  fontsize_row = 10,
  fontsize_col = 10,
  main = "Scaled Expression of Plasticity-Associated Genes"
)
