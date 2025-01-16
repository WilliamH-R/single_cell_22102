####################################################################################################################################################
####################################################################################################################################################
####################################################################################################################################################
######################################################################    Data acquisition    ######################################################
####################################################################################################################################################
####################################################################################################################################################
####################################################################################################################################################

library(Seurat)
library(hdf5r)
library(tidyverse)
library(SeuratDisk)


### Acquiring data from Jakob
### Jakob downloaded the data from https://cellxgene.cziscience.com/collections/0aab20b3-c30c-4606-bd2e-d20dae739c45
### Original paper available at: https://ashpublications.org/bloodadvances/article/8/14/3665/515374/Multiomic-profiling-of-human-clonal-hematopoiesis

# rds format
test_data <- readRDS("/home/projects/22102_single_cell_2025/projects/group_1/d72106bd-d03b-45e6-a0fa-ca2a831ef092.rds")

#H5-format
test_data_h5 <- Read10X_h5("/home/projects/22102_single_cell_2025/projects/group_1/d72106bd-d03b-45e6-a0fa-ca2a831ef092.h5ad")

## Getting wd
getwd()


## Save raw data locally
saveRDS(object = test_data, file = "/net/pupil1/home/people/s242223/projects/scRNASeq/single_cell_22102/raw_data/raw_data.rds")