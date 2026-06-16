# Create_Integrated_Object_Workflow.R
# Workflow describing generation of the integrated pediatric
# lung snRNA-seq Seurat object used for downstream analyses.
#
# Object lineage:
# PT_NEWBORN_cds.rds
# FT_NEWBORN_cds.rds
# INFANT_cds.rds
# Children_cds.rds
# Adolescent_cds.rds
# Young_Adult_cds.rds
# Aged_or_Diseased_cds.rds
# PT_BPD_cds.rds
#   -> merged_seurat_no_filter.rds
#   -> merged_seurat_filtered.rds
#   -> merged_harmony.rds
#   -> lung_query_after_azimuth.rds
#   -> lungQuery_After_Az_Normalized.rds (final integrated object)

library(Seurat)
library(DoubletFinder)
library(harmony)
library(Azimuth)
library(dplyr)

# Input objects
# Individual donor/group Seurat objects were generated from filtered 10X/Cell Ranger count matrices.

input_objects <- c(
  "PT_NEWBORN_cds.rds",
  "FT_NEWBORN_cds.rds",
  "INFANT_cds.rds",
  "Children_cds.rds",
  "Adolescent_cds.rds",
  "Young_Adult_cds.rds",
  "Aged_or_Diseased_cds.rds",
  "PT_BPD_cds.rds"
)

# Step 1. Quality control
# QC was performed independently for each object based on detected genes,
# UMI counts, and mitochondrial transcript percentage.

# sample_obj[["percent.mt"]] <- PercentageFeatureSet(sample_obj, pattern = "^MT-")
# sample_obj <- subset(sample_obj, subset = nFeature_RNA > lower_threshold &
#                                      nFeature_RNA < upper_threshold &
#                                      percent.mt < mitochondrial_threshold)

# Step 2. Doublet removal
# Putative doublets were identified using DoubletFinder.
# Only singlet nuclei were retained for downstream analyses.

# Step 3. Merge samples
# merged_seurat <- merge(sample1, y = list(sample2, sample3, sample4))
# saveRDS(merged_seurat, file = "merged_seurat_no_filter.rds")

# Step 4. Filtering and metadata addition
# Donor/group metadata were added from the project metadata table.

# metadata <- read.csv("Complete_MetaData.csv")

# Metadata fields included donor/group information, developmental stage,
# disease status, sex, age, and batch information.

# Example:
# merged_seurat <- AddMetaData(
#   object = merged_seurat,
#   metadata = metadata
# )

# saveRDS(merged_seurat, file = "merged_seurat_filtered.rds")

# Step 5. Normalization, variable feature selection, scaling, and PCA
# merged_seurat <- NormalizeData(merged_seurat)
# merged_seurat <- FindVariableFeatures(
#   merged_seurat,
#   selection.method = "vst",
#   nfeatures = 2000
# )
# merged_seurat <- ScaleData(merged_seurat)
# merged_seurat <- RunPCA(merged_seurat, npcs = 30)

# Principal components 1:30 were retained for Harmony integration,
# UMAP visualization, neighborhood graph construction,
# and unsupervised clustering.

# Step 6. Harmony integration / batch correction
# Batch correction and integration were performed using Harmony.

# merged_harmony <- RunHarmony(
#   object = merged_seurat,
#   group.by.vars = "Batch",
#   dims.use = 1:30
# )

# saveRDS(merged_harmony, file = "merged_harmony.rds")

# Step 7. UMAP and clustering
# merged_harmony <- RunUMAP(
#   merged_harmony,
#   reduction = "harmony",
#   dims = 1:30
# )

# merged_harmony <- FindNeighbors(
#   merged_harmony,
#   reduction = "harmony",
#   dims = 1:30
# )

# merged_harmony <- FindClusters(
#   merged_harmony,
#   resolution = 0.5
# )

# Step 8. Azimuth / HLCA annotation
# Cell identities were assigned using the Human Lung Cell Atlas reference
# through Azimuth mapping.
# Azimuth Level 1 and finer-resolution annotations were used
# as the primary cell identity labels for downstream analyses.
# saveRDS(lung_query_after_azimuth, file = "lung_query_after_azimuth.rds")

# Step 9. Marker validation
# Cell type annotations were reviewed using canonical marker genes.

canonical_markers <- list(
  Epithelial  = c("EPCAM", "KRT8", "KRT18", "KRT19", "SFTPC"),
  Endothelial = c("PECAM1", "VWF", "EMCN", "CLDN5", "ACKR1"),
  Immune      = c("PTPRC", "CD3D", "CD3E", "CD68", "LYZ"),
  Stromal     = c("COL1A1", "COL1A2", "DCN", "LUM", "PDGFRA")
)

# Step 10. Final object
# Annotation refinement, metadata organization, normalization,
# and downstream preparation steps were completed.

# Final normalized and annotated object
# saveRDS(lung_query_after_azimuth,
#         file = "lungQuery_After_Az_Normalized.rds")
