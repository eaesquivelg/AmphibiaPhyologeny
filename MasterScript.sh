# Align sequences using Muscle

for gene in *.fna; do; ../Programs/muscle3.8.31_i86linux64

# Build a phylogeny for each gene
module load iqtree/2.2.2.6
for muscle in muscle_*; do: iqtree2 -s ${muscle}; done

#Conatenate all phylogenies into a single file
cat *.treefile > All_Trees.tree

# Get species tree from gene trees
java -jar ../Astral/astral.5.7.8.jar -i All_Trees.tree -o Astral.Amphibian.tree

# Get gene concordance factor
iqtree2 -t Astral.Canids.tree --gcf All_Trees.tree --prefix GCF.concord
