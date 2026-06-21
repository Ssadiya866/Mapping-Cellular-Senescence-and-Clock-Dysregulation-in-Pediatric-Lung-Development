# Figure 3. Pathway Enrichment Analysis of Shared Gene Signatures

This folder contains workflows used to generate Figure 3.

## Figure Components

### Panel A
DAVID Gene Ontology enrichment analysis of epithelial shared gene signatures. Enrichment values were exported from DAVID and plotted in GraphPad Prism.

### Panel B
DAVID Gene Ontology enrichment analysis of stromal shared gene signatures. Enrichment values were exported from DAVID and plotted in GraphPad Prism.

### Panel C
Pathway–gene circular visualization showing enriched pathways and associated genes.

## Input Data

Input gene lists were derived from shared and unique gene signatures identified in Figure 2.

## Analysis Workflow

- Gene lists were submitted to DAVID for functional enrichment analysis.
- Enriched biological processes/pathways were exported from DAVID.
- Adjusted p-values/enrichment values were plotted in GraphPad Prism for Panels A–B.
- Pathway–gene relationships were visualized in R using `circlize`.

## Output

Scripts and source files in this folder generate the panels corresponding to Figure 3.
