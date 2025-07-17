# Amphibian Species Tree Based on Developmental Orthologs

## Project Author

- Emiliano Esquivel

---

## Project Purpose

This project aims to **reconstruct a species tree of amphibians** (Anura, Urodela, and Gymnophiona) using multiple **developmental orthologous genes**, such as members of the *HOX*, *PAX*, and *FGF* families.

Unlike a gene tree, this species tree seeks to represent the **evolutionary history of species** through a multi-gene approach that includes:

- Multiple sequence alignment of coding sequences. 
- Inference of individual gene trees.
- Construction of a species tree using gene concordance factors (gCF).
- Evaluation of nodes with support based on multiple loci.

> This project also serves as a practical exercise in evolutionary bioinformatics using real data, integrating command-line tools, genomic data handling, and reproducibility.

### What inspired me to make this project?

The **axolotl (*Ambystoma mexicanum*)** has long fascinated scientists due to its unique **neotenic life history**, in which individuals retain larval traits such as external gills and an aquatic lifestyle throughout adulthood. Its extraordinary capacity for **limb and spinal cord regeneration**, as well as its use as a model organism in developmental biology, makes it a central reference point in this project.

Several of the genes included in our analysis — particularly members of the *HOX*, *FGF*, *PAX*, and *TBX* families — have been studied in the context of **axolotl limb development and regeneration**. The conservation of these pathways across amphibians led us to wonder how widely these developmental signals are preserved in other lineages, and how gene-level evolutionary patterns relate to species-level divergence.

Inspired by the axolotl’s developmental plasticity and its pivotal role in amphibian research, we expanded our phylogenetic analysis to include **all available amphibian orthologs** for key developmental genes, using axolotl as both a **biological anchor** and an **evolutionary point of comparison**.

---

## Requirements to Run the Program

This project was executed in a Git Bash terminal for Windows (using the supercomputer Hoffman2), but can be adapted to other systems. The following are required:

- `bash` (Unix shell).
- [IQ-TREE 2](http://www.iqtree.org/) version 2.2.2.6
- [ASTRAL](https://github.com/smirarab/ASTRAL)
- [FigTree](http://tree.bio.ed.ac.uk/software/figtree/) for visualization.

---

## How to Use the Program

You can reproduce the full analysis by running the `MasterScript.md` in the `Genes/` directory.
