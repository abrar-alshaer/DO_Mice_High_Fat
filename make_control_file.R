library(qtl2)
setwd("C:/Users/Abrar/Dropbox/UNC_OneDrive/Shaikh Lab/DO Mice Project/UNC_Al-Shaer_MURGIGV01_20200710/DO Rqtl2 Analysis/")
rm(list=ls())

chr <- c(1:19, "X")
#chr <- chr[-20]
write_control_file("DO_study_SSH_qtl2_control_file.json",
                   crosstype="do",
                   description="RvE1 Shaikh Lab DO Project",
                   founder_geno_file=paste0("GM_processed_files/GM/GM_foundergeno", chr, ".csv"),
                   founder_geno_transposed=TRUE,
                   gmap_file=paste0("GM_processed_files/GM/GM_gmap", chr, ".csv"),
                   pmap_file=paste0("GM_processed_files/GM/GM_pmap", chr, ".csv"),
                   geno_file=paste0("GMqtl2_SSHlab_geno", chr, ".csv"),
                   geno_transposed=TRUE,
                   geno_codes=list(A=1, H=2, B=3),
                   xchr="X",
                   pheno_file="DO_final_pheno_file_transformed_w-FCs_Added_Weights.csv", #DO_final_pheno_file_transformed_w-FCs
                   covar_file="DO_final_covar_file.csv",
                   phenocovar_file="DO_metaData.csv",
                   sex_covar="sex",
                   sex_codes=list(F="Female", M="Male"),
                   crossinfo_covar="ngen")
