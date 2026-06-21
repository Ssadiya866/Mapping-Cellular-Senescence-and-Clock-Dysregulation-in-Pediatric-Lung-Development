# Figure 2. Shared and Unique Gene Signatures Across Human Lung Development and BPD
Venn diagrams were generated using (https://bioinfogp.cnb.csic.es/tools/venny/).
This folder contains input gene lists and overlap analyses used to generate Figure 2.

## Figure Components

### Panel A
Overlap analysis of epithelial gene signatures across developmental stages.

### Panel B
Overlap analysis of stromal gene signatures across developmental stages.

### Panel C
Shared and unique epithelial gene signatures between PT-Newborn, FT-Newborn, and PT-BPD groups.

### Panel D
Shared and unique stromal gene signatures between PT-Newborn, FT-Newborn, and PT-BPD groups.

### Panel E
Overlap analysis of Transitional AT2-associated gene signatures across developmental and BPD conditions.

### Panel F
Overlap analysis of immature stromal niche-associated gene signatures across developmental and BPD conditions.

## Input Data

Differentially expressed gene lists were generated from the integrated Harmony-corrected and Azimuth-annotated pediatric lung single-nucleus RNA-sequencing dataset using Seurat.

## Analysis Workflow

- Differential expression analysis performed in Seurat.
- Significant gene lists exported for each comparison.
- Gene overlap analysis performed using Venny (https://bioinfogp.cnb.csic.es/tools/venny/).
- Shared and unique genes identified from overlap regions.
- Venn diagrams exported and assembled into Figure 2 panels.

## Output

Panels A–F show shared and unique gene signatures across developmental stages and BPD conditions.
