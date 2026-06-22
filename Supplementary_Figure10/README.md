# Supplementary Figure 10

## Overview

This figure illustrates the PhenoCycler image cytometry gating strategy used to identify epithelial cell populations for downstream dimensionality reduction and clustering analyses.

---

## 10A – PhenoCycler Cell Selection and Gating Workflow

Single-cell segmentation data generated from PhenoCycler imaging were subjected to sequential gating to identify epithelial cells.

Cells were first gated as DAPI+ events to exclude debris and non-cellular objects. From the DAPI+ population, pan-cytokeratin (panCK)+ epithelial cells were selected. Endothelial cells were subsequently excluded by removing CD31+ events, yielding a panCK+CD31− epithelial population.

The resulting epithelial cell subset was used for downstream tSNE visualization and population analysis.

---

## 10B – Representative Gating Strategy

Representative density plots demonstrate sequential gating of DAPI+, panCK+, and CD31− cell populations prior to dimensionality reduction analysis.

Gated epithelial populations were exported for downstream clustering and marker expression analyses.

---
