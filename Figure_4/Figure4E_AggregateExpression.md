Aggregate expression values of selected growth factor receptor and signaling-associated genes were calculated across EC capillary, AT2, and alveolar fibroblast populations.

Workflow:

1. Cell populations of interest were identified from the integrated Harmony-corrected and Azimuth-annotated pediatric lung snRNA-seq dataset.
2. Genes associated with developmental signaling and growth factor pathways were selected.
3. Average expression values were calculated for each developmental stage using Seurat's AverageExpression() function.
4. Expression values were summarized across developmental groups.
5. Aggregate expression plots were generated to compare signaling dynamics during lung development and BPD.

Analysis Workflow

- Aggregate expression analysis using Seurat AverageExpression()
- Comparison of developmental stage-specific signaling patterns
- Visualization of average gene expression across cell populations

Selected genes included members of the EGF, FGF, TGFβ, VEGF, and IGF signaling pathways.

Note: Aggregate expression values were generated directly from the integrated Seurat object and visualized across developmental stages.
