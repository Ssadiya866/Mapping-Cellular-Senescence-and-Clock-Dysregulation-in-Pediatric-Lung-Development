# Supplementary Figure 2

This folder contains workflows used to generate epithelial and stromal lineage annotations and developmental cell composition analyses across pediatric lung development and PT-BPD samples.

---

## Supplementary Figure 2A – Epithelial Cell Subcluster UMAP

UMAP visualization of epithelial cell populations identified from the integrated pediatric lung snRNA-seq dataset.

### Workflow

- Epithelial cells were subset from the integrated Harmony-corrected Seurat object.
- Cell identities were assigned using Azimuth annotations and manual marker verification.
- UMAP embeddings were generated to visualize epithelial lineage relationships.
- Major epithelial populations were annotated based on canonical marker expression.

### Software

- R
- Seurat
- Harmony
- Azimuth
- ggplot2

---

## Supplementary Figure 2B – Stromal Cell Subcluster UMAP

UMAP visualization of stromal cell populations identified from the integrated pediatric lung snRNA-seq dataset.

### Workflow

- Stromal cells were subset from the integrated Harmony-corrected Seurat object.
- Cell identities were assigned using Azimuth annotations and canonical stromal markers.
- UMAP embeddings were generated to visualize stromal lineage relationships.
- Major stromal populations were annotated based on marker expression profiles.

### Software

- R
- Seurat
- Harmony
- Azimuth
- ggplot2

---

## Supplementary Figure 2C – Epithelial Cell Lineage Composition

Cellular composition analysis of epithelial subpopulations across developmental stages and PT-BPD samples.

### Workflow

- Epithelial cell populations were grouped according to developmental stage.
- Cell counts were calculated for each epithelial subtype.
- Relative cell proportions were computed within each developmental group.
- Results were visualized as stacked bar plots.

### Software

- R
- Seurat
- dplyr
- ggplot2

---

## Supplementary Figure 2D – Stromal Cell Lineage Composition

Cellular composition analysis of stromal subpopulations across developmental stages and PT-BPD samples.

### Workflow

- Stromal cell populations were grouped according to developmental stage.
- Cell counts were calculated for each stromal subtype.
- Relative cell proportions were computed within each developmental group.
- Results were visualized as stacked bar plots.

### Software

- R
- Seurat
- dplyr
- ggplot2

---

## Analysis Summary

Integrated pediatric lung snRNA-seq datasets were analyzed using Harmony-corrected Seurat objects and Azimuth-based annotations. Epithelial and stromal lineage populations were visualized using UMAP embeddings and their developmental composition was quantified across pediatric lung development and PT-BPD.

## Files

- SuppFig2A_Epithelial_UMAP.Rmd
- SuppFig2B_Stromal_UMAP.Rmd
- SuppFig2C_Epithelial_Composition.Rmd
- SuppFig2D_Stromal_Composition.Rmd
