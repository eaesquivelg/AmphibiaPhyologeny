# Get all ortholog genes that we are going to use to this project

./datasets download gene symbol HOXA13 --ortholog amphibians --filename HOXA13_amphibians.zip
./datasets download gene symbol HOXD13 --ortholog amphibians --filename HOXD13_amphibians.zip
./datasets download gene symbol PAX3 --ortholog amphibians --filename PAX3_amphibians.zip
./datasets download gene symbol PAX7 --ortholog amphibians --filename PAX7_amphibians.zip
./datasets download gene symbol FGF8 --ortholog amphibians --filename FGF8_amphibians.zip
./datasets download gene symbol FGF10 --ortholog amphibians --filename FGF10_amphibians.zip
./datasets download gene symbol TBX4 --ortholog amphibians --filename TBX4_amphibians.zip
./datasets download gene symbol TBX5 --ortholog amphibians --filename TBX5_amphibians.zip
./datasets download gene symbol MSX1 --ortholog amphibians --filename MSX1_amphibians.zip
./datasets download gene symbol MSX2 --ortholog amphibians --filename MSX2_amphibians.zip
./datasets download gene symbol NOTCH1 --ortholog amphibians --filename NOTCH1_amphibians.zip
./datasets download gene symbol WNT5A --ortholog amphibians --filename WNT5A_amphibians.zip
./datasets download gene symbol BMP4 --ortholog amphibians --filename BMP4_amphibians.zip

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