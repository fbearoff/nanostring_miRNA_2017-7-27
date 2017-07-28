library(NanoStringDiff)

setwd("/home/frank/R_projects/nanostring_miRNA_2017-7-27/")
WD <- getwd()
designs=data.frame(group=c(""))
nstringdata=createNanoStringSetFromCsv(path = "data/2017-7-27 miRNA LC.csv", header = TRUE, designs = designs)

pheno=pData(nstringdata)
group=pheno$group
design.full=model.matrix(~0+group)
