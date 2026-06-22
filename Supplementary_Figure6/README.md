# Supplementary Figure 6

This folder contains developmental senescence, signaling, and pathway association analyses across epithelial and stromal cell populations.

---

## Supplementary Figure 6A – Senescence and Signaling Gene Heatmap

Heatmap visualization of senescence-associated and signaling-associated gene expression across developmental stages and PT-BPD samples.

### Workflow

- Candidate genes associated with senescence, cellular plasticity, and developmental signaling were selected.
- Average expression values were calculated across developmental groups.
- Expression values were Z-score scaled.
- Heatmaps were generated to compare lineage-specific expression patterns across epithelial and stromal populations.

### Software

- R
- Seurat
- pheatmap

---

## Supplementary Figure 6B – Epithelial Gene–Pathway Association Network

Association analysis between epithelial genes and enriched biological pathways.

### Workflow

- Differentially expressed epithelial genes were identified across developmental stages.
- Functional enrichment analysis was performed using DAVID.
- Significant gene–pathway relationships were visualized using Sankey network plots.

### Software

- R
- networkD3
- ggplot2

---

## Supplementary Figure 6C – Stromal Gene–Pathway Association Network

Association analysis between stromal genes and enriched biological pathways.

### Workflow

- Differentially expressed stromal genes were identified across developmental stages.
- Functional enrichment analysis was performed using DAVID.
- Significant gene–pathway relationships were visualized using Sankey network plots.

### Software

- R
- networkD3
- ggplot2

---

## Files

- SuppFig6A_Heatmap.Rmd
- SuppFig6B_Epithelial_Sankey.Rmd
- SuppFig6C_Stromal_Sankey.Rmd
