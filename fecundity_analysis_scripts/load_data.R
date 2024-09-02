library(gridExtra)
library(dplyr)
#library("ggpubr")
#library(forcats)
library(ggplot2)
library(broom)
#library(tidyverse)
library(beeswarm)
library(gridExtra)
library(nlme)
library(lme4)
#library(AICcmodavg)
## commented packages aren't loading... reinstall if needed (June 12, 2023)


## BEFORE USING FILES DOWNLOADED FROM GOOGLE SHEETS, find and replace from copied-pasted file names:
##%5B = "["
##%5D = "]"
##%20 = " "

## Column format:
## V1 = #cross start date (including: plate->replate->count->count)
## V2 = replicate # for date
## V3 = experimental genotype
## V4 = experimental sex
## V5 = experimental age (days; +1 = lay age)
## V6 = experimental infection status
## V7 = control genotype
## V8 = control sex
## V9 = control age (days; +1 = lay age)
## V10 = control infection status
## V11 = hrs laying
## V12 = # eggs total
## V13 = # eggs / day
## V14 = hrs hatching
## V15 = # hatched larvae (@ ~30 hr)
## V16 = % hatched
## V17 = # hatched larvae / day
## (V18 = notes) ##optional


#####################################################################################################
##### WILD TYPE ##########

WT_OreR_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/wild_type_egg_hatch_results - OreR_uninf.tsv")
WT_OreR_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/wild_type_egg_hatch_results - OreR_wMel.tsv")
WT_F10_OreR_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/wild_type_egg_hatch_results - F10_OreR_uninf.tsv")
WT_OreR_wMel_recip <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/CI_crosses_egg_hatch_results - reciprocal-F_wMel-M_uninf.tsv")

WT_Gal4CyO_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/wild_type_egg_hatch_results - nosGal4_CyO_F_uninf.tsv")
WT_Gal4CyO_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/wild_type_egg_hatch_results - nosGal4_CyO_F_wMel.tsv")

WT_Gal4Sb_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/wild_type_egg_hatch_results - nosGal4_Sb_F_uninf.tsv")
WT_Gal4Sb_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/wild_type_egg_hatch_results - nosGal4_Sb_F_wMel.tsv")

RFP_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_RFP(1-7M)_egg_hatch_results - RFP_F_uninf.tsv")
RFP_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_RFP(1-7M)_egg_hatch_results - RFP_F_wMel.tsv")

####################################################################################################3
###### CI/Rescue

DsimRescue <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/CI_crosses_egg_hatch_results - rescue-Dsim_F_wRi-M_wRi.tsv")
DsimCI <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/CI_crosses_egg_hatch_results - CI-Dsim_F_uninf-M_wRi.tsv")

DmelCI <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/CI_crosses_egg_hatch_results - CI-F_uninf-M_wMel.tsv")
DmelRescue <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/CI_crosses_egg_hatch_results - rescue-F_wMel-M_wMel.tsv")
DmelReciprocal <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/CI_crosses_egg_hatch_results - reciprocal-F_wMel-M_uninf.tsv")
DmelRescueOldMales <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/CI_crosses_egg_hatch_results - Copy of OreR_wMel.tsv")

####################################################################################################3
## Dsim fecundity

Dsim_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/Dsim_egg_hatch_results - Dsim_F_uninf.tsv")
Dsim_wRi <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/Dsim_egg_hatch_results - Dsim_F_wRi.tsv")

######################
### Mei-P26 rescue?

meiP261_F_uninf  <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[1]_egg_hatch_results - mei-P26[1]_F_uninf.tsv")
meiP261_F_uninfxwMel  <- read.table("../mei-P26[1]_egg_hatch_results - mei-P26[1]_F_uninf_OreR_M_wMel.tsv")
meiP261_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[1]_egg_hatch_results - mei-P26[1]_F_wMel.tsv")
meiP261_mfs1_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[1]_[mfs1]_egg_hatch_results - [1]_[mfs1]_F_uninf.tsv")
meiP261_mfs1_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[1]_[mfs1]_egg_hatch_results - [1]_[mfs1]_F_wMel.tsv")
meiP26mfs1_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[mfs1]_egg_hatch_results - mfs1_F_uninf.tsv")
meiP26mfs1_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[mfs1]_egg_hatch_results - mfs1_F_wMel.tsv")
meiP26OE_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-OE_egg_hatch_results - OE_F_uninf.tsv")
meiP26OE_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-OE_egg_hatch_results - OE_F_wMel.tsv")
meiP26RNAi_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-RNAi_egg_hatch_results - RNAi_F_uninf.tsv")
meiP26RNAi_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-RNAi_egg_hatch_results - RNAi_F_wMel.tsv")

meiP261_M_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[1]_egg_hatch_results - mei-P26[1]_M_uninf.tsv")
meiP261_M_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[1]_egg_hatch_results - mei-P26[1]_M_wMel.tsv")
meiP26mfs1_M_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[mfs1]_egg_hatch_results - mfs1_M_uninf.tsv")
meiP26mfs1_M_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/mei-P26[mfs1]_egg_hatch_results - mfs1_M_wMel.tsv")
meiP26OE_M_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-OE_egg_hatch_results - OE_M_uninf.tsv")
meiP26OE_M_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-OE_egg_hatch_results - OE_M_wMel.tsv")
meiP26RNAi_M_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-RNAi_egg_hatch_results - RNAi_M_uninf.tsv")
meiP26RNAi_M_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_mei-P26-RNAi_egg_hatch_results - RNAi_M_wMel.tsv")

################################################################################################
#### Bam rescue?
####
bamd86_het_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/bam[d86]_+_egg_hatch_results - bam[d86]-het_F_uninf.tsv")
bamd86_het_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/bam[d86]_+_egg_hatch_results - bam[d86]-het_F_wMel.tsv")

bamd86_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/bam[d86]_egg_hatch_results - bam[d86]_F_uninf.tsv")
bamd86_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/bam[d86]_egg_hatch_results - bam[d86]_F_wMel.tsv")
bamd86_M_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/bam[d86]_egg_hatch_results - bam[d86]_M_uninf.tsv")
bamd86_M_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/bam[d86]_egg_hatch_results - bam[d86]_M_wMel.tsv")

bamRNAi_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_bam-RNAi_egg_hatch_results - bam-RNAi_F_uninf.tsv")
bamRNAi_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_bam-RNAi_egg_hatch_results - bam-RNAi_F_wMel.tsv")

bamEY03755_F_uninf <- read.table("../bam[EY03755]_egg_hatch_results - bam[EY03755]_F_uninf.tsv")
bamEY03755_F_wMel <- read.table("../bam[EY03755]_egg_hatch_results - bam[EY03755]_F_wMel.tsv")


##################
htsRNAi_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_htsRNAi_egg_hatch_results - htsRNAi_F_uninf.tsv")
htsRNAi_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_htsRNAi_egg_hatch_results - htsRNAi_F_wMel.tsv")
#
htsRNAi_M_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_htsRNAi_egg_hatch_results - htsRNAi_M_uninf.tsv")
htsRNAi_M_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_htsRNAi_egg_hatch_results - htsRNAi_M_wMel.tsv")
##################
sxlRNAi_F_uninf <- read.table("../nos_sxlRNAi-Val22_egg_hatch_results - sxlRNAi-Val22_F_uninf.tsv")
sxlRNAi_F_wMel <- read.table("../nos_sxlRNAi-Val22_egg_hatch_results - sxlRNAi-Val22_F_wMel.tsv")

wuhoRNAi_F_uninf <- read.table("../nos_wuho-RNAi_egg_hatch_results - wuhoRNAi_F_uninf.tsv")
wuhoRNAi_F_wMel <- read.table("../nos_wuho-RNAi_egg_hatch_results - wuhoRNAi_F_wMel.tsv")

bgcnRNAi_F_uninf <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_bgcnRNAi_egg_hatch_results - bgcnRNAi_F_uninf.tsv")
bgcnRNAi_F_wMel <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/nos_bgcnRNAi_egg_hatch_results - bgcnRNAi_F_wMel.tsv")

wcdRNAi_F_uninf <- read.table("../nos_wcd-RNAi_egg_hatch_results - wcdRNAi_F_uninf.tsv")
wcdRNAi_F_wMel <- read.table("../nos_wcd-RNAi_egg_hatch_results - wcdRNAi_F_wMel.tsv")
