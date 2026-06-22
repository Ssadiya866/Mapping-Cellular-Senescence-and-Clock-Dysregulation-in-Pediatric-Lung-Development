# Supplementary Figure 5

This folder contains pathway, gene expression, and developmental signaling analyses associated with epithelial plasticity during pediatric lung development.

---

## Supplementary Figure 5A – Developmental Signaling Marker Heatmap

Heatmap visualization of signaling-related gene expression across major cellular compartments.

### Workflow

- Signaling-associated genes implicated in epithelial plasticity and developmental regulation were selected.
- Average expression values were calculated for each major cell lineage.
- Expression values were Z-score scaled.
- Heatmaps were generated to compare lineage-specific expression patterns.

### Software

- R
- Seurat
- pheatmap

---

## Supplementary Figure 5B – Developmental Expression of Growth Factor Signaling Genes

FeaturePlot visualization of IGF1R, TGFBR2, and EGFR expression across developmental stages.

### Workflow

- Normalized gene expression values were extracted from the integrated Seurat object.
- Cells were grouped by developmental stage.
- FeaturePlots were generated to visualize spatial distribution and developmental expression patterns.

### Software

- R
- Seurat
- ggplot2

---

## Supplementary Figure 5C – Pathway Enrichment Analysis

Functional enrichment analysis of epithelial and stromal developmental gene signatures.

### Workflow

- Differentially expressed genes were identified from developmental comparisons.
- Gene Ontology (GO) enrichment analysis was performed.
- Significantly enriched biological processes were visualized using dot plots.

### Software

- R
- DAVID Functional Annotation Tool
- ggplot2

---

## Supplementary Figure 5D – Developmental Expression of Plasticity-Associated Signaling Genes

FeaturePlot visualization of BMPR2, ZEB1, JAK1, and ZEB2 expression across developmental stages.

### Workflow

- Candidate plasticity-associated genes were selected based on developmental signaling pathways.
- Normalized expression values were extracted from the integrated Seurat object.
- FeaturePlots were generated across developmental stages to assess dynamic expression patterns.

### Software

- R
- Seurat
- ggplot2

---

## Files

- SuppFig5A_SignalingHeatmap.Rmd
- SuppFig5B_GrowthFactor_FeaturePlots.Rmd
- SuppFig5C_PathwayEnrichment.Rmd
- SuppFig5D_PlasticitySignaling_FeaturePlots.Rmd
