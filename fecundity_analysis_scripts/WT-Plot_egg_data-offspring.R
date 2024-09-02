

####################################
## Total fecundity per day
## V17 = # hatched larvae / day
####################
####
## parse data and subset to 3-7 day old
###
WT_OreR_wMel_offspring_full <- data.frame(group="WT_OreR_wMel", age=as.numeric(WT_OreR_wMel$V5), value=as.numeric(WT_OreR_wMel$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V17)), batch=WT_OreR_wMel$V1)
## select 3-7d old
WT_OreR_wMel_offspring <- subset(subset(WT_OreR_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

WT_OreR_wMel_recip_offspring_full <- data.frame(group="WT_OreR_wMel_recip", age=as.numeric(WT_OreR_wMel_recip$V5), value=as.numeric(WT_OreR_wMel_recip$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel_recip$V17)))
## select 3-7d old
WT_OreR_wMel_recip_offspring <- subset(subset(WT_OreR_wMel_recip_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_OreR_uninf_offspring_full <- data.frame(group="WT_OreR_uninf", age=as.numeric(WT_OreR_uninf$V5), value=as.numeric(WT_OreR_uninf$V17), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V17)), batch=WT_OreR_uninf$V1)
## select 3-7d old
WT_OreR_uninf_offspring <- subset(subset(WT_OreR_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

WT_F10_OreR_uninf_offspring_full <- data.frame(group="WT_F10_OreR_uninf", age=as.numeric(WT_F10_OreR_uninf$V5), value=as.numeric(WT_F10_OreR_uninf$V17), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_F10_OreR_uninf$V17)))
## select 3-7d old
WT_F10_OreR_uninf_offspring <- subset(subset(WT_F10_OreR_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


##########

WT_Gal4CyO_wMel_offspring_full  <- data.frame(group="WT_Gal4CyO_wMel", age=as.numeric(WT_Gal4CyO_wMel$V5), value=as.numeric(WT_Gal4CyO_wMel$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_Gal4CyO_wMel$V17)))
## select 3-7d old
WT_Gal4CyO_wMel_offspring <- subset(subset(WT_Gal4CyO_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_Gal4CyO_uninf_offspring_full <- data.frame(group="WT_Gal4CyO_uninf", age=as.numeric(WT_Gal4CyO_uninf$V5), value=as.numeric(WT_Gal4CyO_uninf$V17), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_Gal4CyO_uninf$V17)))
## select 3-7d old
WT_Gal4CyO_uninf_offspring <- subset(subset(WT_Gal4CyO_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

#########

WT_Gal4Sb_wMel_offspring_full <- data.frame(group="WT_Gal4Sb_wMel", age=as.numeric(WT_Gal4Sb_wMel$V5), value=as.numeric(WT_Gal4Sb_wMel$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_Gal4Sb_wMel$V17)))
## select 3-7d old
WT_Gal4Sb_wMel_offspring <- subset(subset(WT_Gal4Sb_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_Gal4Sb_uninf_offspring_full <- data.frame(group="WT_Gal4Sb_uninf", age=as.numeric(WT_Gal4Sb_uninf$V5), value=as.numeric(WT_Gal4Sb_uninf$V17), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_Gal4Sb_uninf$V17)))
## select 3-7d old
WT_Gal4Sb_uninf_offspring <- subset(subset(WT_Gal4Sb_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


#########################

RFP_uninf_offspring_full <- data.frame(group="RFP_uninf", age=as.numeric(RFP_uninf$V5), value=as.numeric(RFP_uninf$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(RFP_uninf$V17)))
## select 3-7d old
RFP_uninf_offspring <- subset(subset(RFP_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

RFP_wMel_offspring_full <- data.frame(group="RFP_wMel", age=as.numeric(RFP_wMel$V5), value=as.numeric(RFP_wMel$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(RFP_wMel$V17)))
## select 3-7d old
RFP_wMel_offspring <- subset(subset(RFP_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


##################################################
#########################
#########################
## bind together data frames
all_F_offspring <- rbind(WT_OreR_wMel_offspring, WT_OreR_wMel_recip_offspring, WT_OreR_uninf_offspring, WT_F10_OreR_uninf_offspring, WT_Gal4CyO_wMel_offspring, WT_Gal4CyO_uninf_offspring, WT_Gal4Sb_wMel_offspring, WT_Gal4Sb_uninf_offspring, RFP_wMel_offspring, RFP_uninf_offspring)
## this produces a data frame with samples in the intended order
all_F_offspring_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_wMel_recip"), paste("WT_OreR_uninf"), paste("WT_F10_OreR_uninf"), paste("WT_Gal4CyO_wMel"), paste("WT_Gal4CyO_uninf"), paste("WT_Gal4Sb_wMel"), paste("WT_Gal4Sb_uninf"), paste("nos-Gal4>UAS:RFP_wMel"), paste("nos-Gal4>UAS:RFP_uninf"))
## reorder by group for beeswarm
all_F_offspring$group <- factor(all_F_offspring$group, levels=all_F_offspring_levels)

pdf("all-WT_offspring_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(all_F_offspring$value ~ all_F_offspring$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / day", names=FALSE)
beeswarm(all_F_offspring$value ~ all_F_offspring$group, pwcol=all_F_offspring$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0:length(all_F_offspring_levels), y=par("usr")[3]-25, labels=all_F_offspring_levels, xpd=NA, srt=45, cex=1)
dev.off()

#########################

wilcox.test(WT_OreR_wMel_offspring$value, WT_OreR_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and WT_OreR_uninf_offspring$value
W = 8298, p-value = 0.8092
alternative hypothesis: true location shift is not equal to 0

#########################
wilcox.test(WT_OreR_wMel_offspring$value, WT_OreR_wMel_recip_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and WT_OreR_wMel_recip_offspring$value
W = 3282.5, p-value = 0.2735
alternative hypothesis: true location shift is not equal to 0

#######################
> wilcox.test(WT_OreR_uninf_offspring$value, WT_OreR_wMel_recip_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and WT_OreR_wMel_recip_offspring$value
W = 4525.5, p-value = 0.325
alternative hypothesis: true location shift is not equal to 0


#################
wilcox.test(WT_OreR_wMel_offspring$value, WT_F10_OreR_uninf_offspring$value)

  Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and WT_F10_OreR_uninf_offspring$value
W = 5892.5, p-value = 0.123
alternative hypothesis: true location shift is not equal to 0

####
wilcox.test(WT_OreR_uninf_offspring$value, WT_F10_OreR_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and WT_F10_OreR_uninf_offspring$value
W = 8062, p-value = 0.1807
alternative hypothesis: true location shift is not equal to 0

####
wilcox.test(WT_Gal4CyO_wMel_offspring$value, WT_Gal4CyO_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_Gal4CyO_wMel_offspring$value and WT_Gal4CyO_uninf_offspring$value
W = 2689, p-value = 0.002204
alternative hypothesis: true location shift is not equal to 0

##########

wilcox.test(WT_Gal4Sb_wMel_offspring$value, WT_Gal4Sb_uninf_offspring$value)


	Wilcoxon rank sum test with continuity correction

data:  WT_Gal4Sb_wMel_offspring$value and WT_Gal4Sb_uninf_offspring$value
W = 499, p-value = 0.7413
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(WT_Gal4Sb_wMel_offspring$value, WT_Gal4Sb_uninf_offspring$value) :
  cannot compute exact p-value with ties
