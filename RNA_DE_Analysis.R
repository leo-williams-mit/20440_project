library(GSVA)
library(GSEABase)
library(limma)
library(pheatmap)
library(ggplot2)

####Set WD#############
expr_matrix <-read.csv("Aurora_RNASeq_UQN_Counts_MetNorm.csv")
rownames(expr_matrix) <- expr_matrix$X
read.csv("Aurora_RNASeq_UQN_Counts.csv")
expr_matrix

norm.id <- meta[meta$Type == 'Normal',]$X
tum.id <- meta[meta$Type != 'Normal',]$X

metnorm.id <- meta[meta$Type != 'Primary',]$X
length(type.list)

length(expr_matrix)
expr_matrix
tumors
read.csv("GSE209998_AUR_129_UQN_1.txt")

meta <- read.csv("Aurora_Metadata.csv")
prim.met <- expr_matrix$T
meta$Type

type.list <- array(metnorm.id)
design <- model.matrix(~ type.list)
fit <- lmFit(expr_matrix, design)

fit <- eBayes(fit)
top_table <- topTable(fit, coef=2, adjust="BH", number = Inf)
View(top_table) 
write.csv(top_table, "Prim-Meta_TopTable-True.csv")
expr_matrix

#####Just PrimvMet
type.list <- array(meta[meta$Type != 'Normal',]$X)
design <- model.matrix(~ type.list)
fitt <- lmFit(tumors, design)

fitt <- eBayes(fitt)
top_table <- topTable(fit, coef=2, adjust="BH", number = Inf)

View(fitt)

ggplot(data=top_table, aes(x=logFC, y=P.Value))

a

BiocManager::install("GeomxTools")
library(rtracklayer)

gtf <- import("gencode.gtf")

coding_genes <- gtf[gtf$gene_type == "protein_coding"]
write.csv(coding_genes, "coding_genes2.csv")
