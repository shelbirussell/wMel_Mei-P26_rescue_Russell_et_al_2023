library(ggplot2)

##data <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My\ Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/all_fecundity.noNAs.tsv")
dataCI <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My\ Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/Table_S1_fecundity_assays - CI.noNAs.tsv")
dataMeiP26_F <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My\ Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/Table_S1_fecundity_assays\ -\ meiP26-F.noNAs.tsv")
dataMeiP26_M <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My\ Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/Table_S1_fecundity_assays\ -\ meiP26-M.noNAs.tsv")
dataWT <- read.table("/Users/shelbilrussell/Library/CloudStorage/GoogleDrive-shelbilrussell@gmail.com/My\ Drive/lab/projects/publication_in_progress/Germline_rescue-2023/data/fecundity_assays/results_by_genotype/final_tsvs/fecundity_assays - WT.noNAs.tsv")

######################################
## rename columns
x <- c("date", "exp_geno", "exp_sex", "exp_age", "exp_inf", "ctl_geno", "ctl_sex", "ctl_age", "ctl_inf", "hrs_lay", "eggs_total", "eggs_per_day", "hrs_hatch", "hatch_total", "hatch_%", "larvae_per_day")

##colnames(data) <- x
colnames(dataCI) <- x
colnames(dataMeiP26_F) <- x
colnames(dataMeiP26_M) <- x
colnames(dataWT) <- x

## sort by date - this has to be done first - if groups are made and sorted by first, this sort doesn't work
#dataCI$date <- factor(dataCI$date, levels = unique(dataCI$date))
#dataMeiP26$date <- factor(dataMeiP26$date, levels = unique(dataMeiP26$date))
#dataMeiP26_F$date <- factor(dataMeiP26_F$date, levels = unique(dataMeiP26_F$date))
#dataMeiP26_M$date <- factor(dataMeiP26_M$date, levels = unique(dataMeiP26_M$date))
#dataWT$date <- factor(dataWT$date, levels = unique(dataWT$date))

############ these other commands likely work too... they just weren't working below the groups
## https://stackoverflow.com/questions/38514031/order-of-dates-is-not-chronological-in-ggplot2
###dataCI$date = as.Date(dataCI$date, format = "%m/%d%/Y")
###dataCI$date <- factor(dataCI$date, ordered = T)
#dates <- unique(sort(dataCI$date))
#dataCI$date <- factor(dataCI$date, labels = dates,  ordered = T)

## DO NOT sort by group
## 7 levels
#dataCI$group <- factor(paste0(dataCI$exp_geno, dataCI$exp_sex, dataCI$exp_inf, dataCI$ctl_geno, dataCI$ctl_sex, dataCI$ctl_inf))
## 29 levels
#dataMeiP26$group <- factor(paste0(dataMeiP26$exp_geno, dataMeiP26$exp_sex, dataMeiP26$exp_inf, dataMeiP26$ctl_geno, dataMeiP26$ctl_sex, dataMeiP26$ctl_inf))
#dataMeiP26_F$group <- factor(paste0(dataMeiP26_F$exp_geno, dataMeiP26_F$exp_sex, dataMeiP26_F$exp_inf, dataMeiP26_F$ctl_geno, dataMeiP26_F$ctl_sex, dataMeiP26_F$ctl_inf))
#dataMeiP26_M$group <- factor(paste0(dataMeiP26_M$exp_geno, dataMeiP26_M$exp_sex, dataMeiP26_M$exp_inf, dataMeiP26_M$ctl_geno, dataMeiP26_M$ctl_sex, dataMeiP26_M$ctl_inf))
## 13 levels
#dataWT$group <- factor(paste0(dataWT$exp_geno, dataWT$exp_sex, dataWT$exp_inf, dataWT$ctl_geno, dataWT$ctl_sex, dataWT$ctl_inf))

dataCI$group <- paste0(dataCI$exp_geno, dataCI$exp_sex, dataCI$exp_inf, dataCI$ctl_geno, dataCI$ctl_sex, dataCI$ctl_inf)
dataMeiP26_F$group <- paste0(dataMeiP26_F$exp_geno, dataMeiP26_F$exp_sex, dataMeiP26_F$exp_inf, dataMeiP26_F$ctl_geno, dataMeiP26_F$ctl_sex, dataMeiP26_F$ctl_inf)
dataMeiP26_M$group <- paste0(dataMeiP26_M$exp_geno, dataMeiP26_M$exp_sex, dataMeiP26_M$exp_inf, dataMeiP26_M$ctl_geno, dataMeiP26_M$ctl_sex, dataMeiP26_M$ctl_inf)
#dataWT$group <- paste0(dataWT$exp_geno, dataWT$exp_sex, dataWT$exp_inf, dataWT$ctl_geno, dataWT$ctl_sex, dataWT$ctl_inf)

###############################
####################
## plot and color by group
## https://stackoverflow.com/questions/21484999/r-scale-plot-elements-within-pdf-of-set-width-and-height

#sort by date, from least recent to most recent
#df[order(as.Date(df$date, format="%m/%d/%Y")),] ==> doesn't work for plotting

######
### eggs
######

c <- ggplot(dataCI, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("CI_eggs_fecundity_collection_barplot.pdf", c, width=3, height=3, units="in", scale=4)


#m <- ggplot(dataMeiP26, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
#ggsave("MeiP26_eggs_fecundity_collection_barplot.pdf", m, width=4, height=4, units="in", scale=9)

mf <- ggplot(dataMeiP26_F, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26_F_eggs_fecundity_collection_barplot.pdf", mf, width=3, height=3, units="in", scale=5)

mm <- ggplot(dataMeiP26_M, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26_M_eggs_fecundity_collection_barplot.pdf", mm, width=3, height=3, units="in", scale=4)

#w <- ggplot(dataWT, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
#ggsave("WT_eggs_fecundity_collection_barplot.pdf", w, width=3, height=3, units="in", scale=5)


#####
### hatch
#####

c <- ggplot(dataCI, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("CI_hatch_fecundity_collection_barplot.pdf", c, width=3, height=3, units="in", scale=4)

#m <- ggplot(dataMeiP26, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
#ggsave("MeiP26_hatch_fecundity_collection_barplot.pdf", m, width=4, height=4, units="in", scale=9)

mf <- ggplot(dataMeiP26_F, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26_F_hatch_fecundity_collection_barplot.pdf", mf, width=3, height=3, units="in", scale=5)

mm <- ggplot(dataMeiP26_M, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26_M_hatch_fecundity_collection_barplot.pdf", mm, width=3, height=3, units="in", scale=4)

#w <- ggplot(dataWT, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
#ggsave("WT_hatch_fecundity_collection_barplot.pdf", w, width=3, height=3, units="in", scale=5)


######
## offspring
######

c <- ggplot(dataCI, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("CI_larvae_fecundity_collection_barplot.pdf", c, width=3, height=3, units="in", scale=4)

#m <- ggplot(dataMeiP26, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
#ggsave("MeiP26_larvae_fecundity_collection_barplot.pdf", m, width=4, height=4, units="in", scale=9)

mf <- ggplot(dataMeiP26_F, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26_F_larvae_fecundity_collection_barplot.pdf", mf, width=3, height=3, units="in", scale=5)

mm <- ggplot(dataMeiP26_M, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26_M_larvae_fecundity_collection_barplot.pdf", mm, width=3, height=3, units="in", scale=4)

#w <- ggplot(dataWT, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
#ggsave("WT_larvae_fecundity_collection_barplot.pdf", w, width=3, height=3, units="in", scale=5)

#################################################################################
################################################################################
################################################################################
################################ SUBSET ########################################
################################################################################
################################################################################
################################################################################
################################################################################

dataMeiP261_F <- subset(dataMeiP26_F, exp_geno=="mei-P26[1]")

mm1 <- ggplot(dataMeiP261_F, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP261_F_eggs_fecundity_collection_barplot.pdf", mm1, width=3, height=3, units="in", scale=4)

mm1 <- ggplot(dataMeiP261_F, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP261_F_hatch_fecundity_collection_barplot.pdf", mm1, width=3, height=3, units="in", scale=4)

mm1 <- ggplot(dataMeiP261_F, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP261_F_larvae_fecundity_collection_barplot.pdf", mm1, width=3, height=3, units="in", scale=4)

##

dataMeiP261_WT_F <- subset(dataMeiP26_F, exp_geno %in% c("mei-P26[1]", "OreR"))
####dataMeiP261_WT_F$date <- factor(dataMeiP261_WT_F$date, levels = unique(dataMeiP261_WT_F$date))
#dates <- unique(sort(dataMeiP261_WT_F$date))
#dataMeiP261_WT_F$date <- factor(dataMeiP261_WT_F$date, labels = dates,  ordered = T)
dataMeiP261_WT_F$date <- factor(dataMeiP261_WT_F$date, levels = unique(dataMeiP261_WT_F$date))

mmw1 <- ggplot(dataMeiP261_WT_F, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP261_WT_F_eggs_fecundity_collection_barplot.pdf", mmw1, width=3, height=3, units="in", scale=4)

mmw1 <- ggplot(dataMeiP261_WT_F, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP261_WT_F_hatch_fecundity_collection_barplot.pdf", mmw1, width=3, height=3, units="in", scale=4)

mmw1 <- ggplot(dataMeiP261_WT_F, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP261_WT_F_larvae_fecundity_collection_barplot.pdf", mmw1, width=3, height=3, units="in", scale=4)

#################################################################################
################################################################################
###########################################################

dataMeiP26RNAi_F <- subset(dataMeiP26_F, exp_geno=="mei-P26_RNAi")

RNAi <- ggplot(dataMeiP26RNAi_F, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26RNAi_F_eggs_fecundity_collection_barplot.pdf", RNAi, width=3, height=3, units="in", scale=4)

RNAi <- ggplot(dataMeiP26RNAi_F, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26RNAi_F_hatch_fecundity_collection_barplot.pdf", RNAi, width=3, height=3, units="in", scale=4)

RNAi <- ggplot(dataMeiP26RNAi_F, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26RNAi_F_larvae_fecundity_collection_barplot.pdf", RNAi, width=3, height=3, units="in", scale=4)

##

dataMeiP26RNAi_WT_F <- subset(dataMeiP26_F, exp_geno %in% c("mei-P26_RNAi", "OreR"))

RNAiw <- ggplot(dataMeiP26RNAi_WT_F, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26RNAi_WT_F_eggs_fecundity_collection_barplot.pdf", RNAiw, width=3, height=3, units="in", scale=4)

RNAiw <- ggplot(dataMeiP26RNAi_WT_F, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26RNAi_WT_F_hatch_fecundity_collection_barplot.pdf", RNAiw, width=3, height=3, units="in", scale=4)

RNAiw <- ggplot(dataMeiP26RNAi_WT_F, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26RNAi_WT_F_larvae_fecundity_collection_barplot.pdf", RNAiw, width=3, height=3, units="in", scale=4)

#################################################################################
################################################################################
###########################################################

#dataMeiP26mfs1_F <- subset(dataMeiP26_F, exp_geno=="mei-P26[mfs1]")
dataMeiP26mfs1_1_F <- subset(dataMeiP26_F, exp_geno %in% c("mei-P26[mfs1]", "mei-P26[1]/mei-P26[mfs1]"))

mmfs1 <- ggplot(dataMeiP26mfs1_1_F, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26mfs1_1_F_egg_fecundity_collection_barplot.pdf", mmfs1, width=3, height=3, units="in", scale=4)

mmfs1 <- ggplot(dataMeiP26mfs1_1_F, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26mfs1_1_F_hatch_fecundity_collection_barplot.pdf", mmfs1, width=3, height=3, units="in", scale=4)

mmfs1 <- ggplot(dataMeiP26mfs1_1_F, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26mfs1_1_F_larvae_fecundity_collection_barplot.pdf", mmfs1, width=3, height=3, units="in", scale=4)


##

dataMeiP26mfs1_1_WT_F <- subset(dataMeiP26_F, exp_geno %in% c("mei-P26[mfs1]", "mei-P26[1]/mei-P26[mfs1]", "OreR"))

mmwmfs1 <- ggplot(dataMeiP26mfs1_1_WT_F, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26mfs1_1_WT_F_egg_fecundity_collection_barplot.pdf", mmwmfs1, width=3, height=3, units="in", scale=4)

mmwmfs1 <- ggplot(dataMeiP26mfs1_1_WT_F, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26mfs1_1_WT_F_hatch_fecundity_collection_barplot.pdf", mmwmfs1, width=3, height=3, units="in", scale=4)

mmwmfs1 <- ggplot(dataMeiP26mfs1_1_WT_F, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("MeiP26mfs1_1_WT_F_larvae_fecundity_collection_barplot.pdf", mmwmfs1, width=3, height=3, units="in", scale=4)

#################################################################################
################################################################################
> unique(dataCI$group)
[1] DsimFemaleuninfectedDsimMalewRi
[2] DsimFemalewRiDsimMalewRi
[3] OreRFemaleuninfectedOreRMaleuninfected
[4] OreRFemalewMelOreRMalewMel
[5] OreRFemaleuninfectedOreRMalewMel
[6] OreRFemalewMelOreRMaleuninfected
[7] DsimFemaleuninfectedDsimMaleuninfected
7 Levels: DsimFemaleuninfectedDsimMaleuninfected ...

dataCI_s <- subset(dataCI, group %in% c("OreRFemaleuninfectedOreRMalewMel", "OreRFemalewMelOreRMalewMel", "OreRFemalewMelOreRMaleuninfected", "OreRFemaleuninfectedOreRMaleuninfected"))

cS <- ggplot(dataCI_s, aes(x=date, y=eggs_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("CI_OreR_eggs_fecundity_collection_barplot.pdf", cS, width=3, height=3, units="in", scale=4)

cS <- ggplot(dataCI_s, aes(x=date, y=`hatch_%`+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("CI_OreR_hatch_fecundity_collection_barplot.pdf", cS, width=3, height=3, units="in", scale=4)

cS <- ggplot(dataCI_s, aes(x=date, y=larvae_per_day+0.1, fill=group)) + geom_bar(position="dodge", stat="identity") + scale_x_discrete(guide = guide_axis(angle = 90)) + theme_minimal() + theme(axis.text=element_text(size=6))
ggsave("CI_OreR_larvae_fecundity_collection_barplot.pdf", cS, width=3, height=3, units="in", scale=4)


#################################################################################
################################################################################
###########################################################
