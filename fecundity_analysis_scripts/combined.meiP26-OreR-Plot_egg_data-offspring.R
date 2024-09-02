#########################
## Colors
## deeppink2 = rgb(0.93,0.07,0.54,0.7)
## lightpink2 = rgb(0.933,0.635,0.678,0.7)
####################################
## Total fecundity per day
## V17 = # hatched larvae / day
####################
#### Females
## parse data and subset to 3-7 day old
###
WT_OreR_wMel_offspring_full <- data.frame(group="WT_OreR_wMel", age=as.numeric(WT_OreR_wMel$V5), value=as.numeric(WT_OreR_wMel$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V17)))
## select 3-7d old
WT_OreR_wMel_offspring <- subset(subset(WT_OreR_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_OreR_uninf_offspring_full <- data.frame(group="WT_OreR_uninf", age=as.numeric(WT_OreR_uninf$V5), value=as.numeric(WT_OreR_uninf$V17), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V17)))
## select 3-7d old
WT_OreR_uninf_offspring <- subset(subset(WT_OreR_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

RFP_uninf_offspring_full <- data.frame(group="RFP_uninf", age=as.numeric(RFP_uninf$V5), value=as.numeric(RFP_uninf$V17), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(RFP_uninf$V17)))
## select 3-7d old
RFP_uninf_offspring <- subset(subset(RFP_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

RFP_wMel_offspring_full <- data.frame(group="RFP_wMel", age=as.numeric(RFP_wMel$V5), value=as.numeric(RFP_wMel$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(RFP_wMel$V17)))
## select 3-7d old
RFP_wMel_offspring <- subset(subset(RFP_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_F_uninf_offspring_full <- data.frame(group="meiP261_F_uninf", age=as.numeric(meiP261_F_uninf$V5), value=as.numeric(meiP261_F_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP261_F_uninf$V17)))
## select 3-7d old
meiP261_F_uninf_offspring <- subset(subset(meiP261_F_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_F_wMel_offspring_full <- data.frame(group="meiP261_F_wMel", age=as.numeric(meiP261_F_wMel$V5), value=as.numeric(meiP261_F_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP261_F_wMel$V17)))
## select 3-7d old
meiP261_F_wMel_offspring <- subset(subset(meiP261_F_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_mfs1_F_uninf_offspring_full <- data.frame(group="meiP261_mfs1_F_uninf", age=as.numeric(meiP261_mfs1_F_uninf$V5), value=as.numeric(meiP261_mfs1_F_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP261_mfs1_F_uninf$V17)))
## select 3-7d old
meiP261_mfs1_F_uninf_offspring <- subset(subset(meiP261_mfs1_F_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_mfs1_F_wMel_offspring_full <- data.frame(group="meiP261_mfs1_F_wMel", age=as.numeric(meiP261_mfs1_F_wMel$V5), value=as.numeric(meiP261_mfs1_F_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP261_mfs1_F_wMel$V17)))
## select 3-7d old
meiP261_mfs1_F_wMel_offspring <- subset(subset(meiP261_mfs1_F_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_F_uninf_offspring_full <- data.frame(group="meiP26mfs1_F_uninf", age=as.numeric(meiP26mfs1_F_uninf$V5), value=as.numeric(meiP26mfs1_F_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP26mfs1_F_uninf$V17)))
## select 3-7d old
meiP26mfs1_F_uninf_offspring <- subset(subset(meiP26mfs1_F_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_F_wMel_offspring_full <- data.frame(group="meiP26mfs1_F_wMel", age=as.numeric(meiP26mfs1_F_wMel$V5), value=as.numeric(meiP26mfs1_F_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP26mfs1_F_wMel$V17)))
## select 3-7d old
meiP26mfs1_F_wMel_offspring <- subset(subset(meiP26mfs1_F_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_F_uninf_offspring_full <- data.frame(group="meiP26RNAi_F_uninf", age=as.numeric(meiP26RNAi_F_uninf$V5), value=as.numeric(meiP26RNAi_F_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP26RNAi_F_uninf$V17)))
## select 3-7d old
meiP26RNAi_F_uninf_offspring <- subset(subset(meiP26RNAi_F_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_F_wMel_offspring_full <- data.frame(group="meiP26RNAi_F_wMel", age=as.numeric(meiP26RNAi_F_wMel$V5), value=as.numeric(meiP26RNAi_F_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP26RNAi_F_wMel$V17)))
## select 3-7d old
meiP26RNAi_F_wMel_offspring <- subset(subset(meiP26RNAi_F_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

###########
## bind together data frames
F_offspring <- rbind(WT_OreR_wMel_offspring, WT_OreR_uninf_offspring, meiP26RNAi_F_wMel_offspring, meiP26RNAi_F_uninf_offspring, meiP261_F_wMel_offspring, meiP261_F_uninf_offspring, meiP26mfs1_F_wMel_offspring, meiP26mfs1_F_uninf_offspring, meiP261_mfs1_F_wMel_offspring, meiP261_mfs1_F_uninf_offspring)
## this produces a data frame with samples in the intended order
F_offspring_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))

## reorder by group for beeswarm
F_offspring$group <- factor(F_offspring$group, levels=F_offspring_levels)

pdf("combined.mei-P26_knockdown_F_offspring_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_offspring$value ~ F_offspring$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / female / day", names=FALSE)
beeswarm(F_offspring$value ~ F_offspring$group, pwcol=F_offspring$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0:length(F_offspring_levels), y=par("usr")[3]-25, labels=F_offspring_levels, xpd=NA, srt=45, cex=1)
dev.off()

##########################################################
##########################################################
##########################################################

RFP_F_offspring <- rbind(WT_OreR_wMel_offspring, WT_OreR_uninf_offspring, RFP_wMel_offspring, RFP_uninf_offspring, meiP26RNAi_F_wMel_offspring, meiP26RNAi_F_uninf_offspring, meiP261_F_wMel_offspring, meiP261_F_uninf_offspring, meiP26mfs1_F_wMel_offspring, meiP26mfs1_F_uninf_offspring, meiP261_mfs1_F_wMel_offspring, meiP261_mfs1_F_uninf_offspring)
## this produces a data frame with samples in the intended order
RFP_F_offspring_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("RFP_wMel"), paste("RFP_uninf"), paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))

## reorder by group for beeswarm
RFP_F_offspring$group <- factor(RFP_F_offspring$group, levels=RFP_F_offspring_levels)

pdf("combined.mei-P26_knockdown_RFP+F_offspring_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(RFP_F_offspring$value ~ RFP_F_offspring$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / female / day", names=FALSE)
beeswarm(RFP_F_offspring$value ~ RFP_F_offspring$group, pwcol=RFP_F_offspring$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0:length(RFP_F_offspring_levels), y=par("usr")[3]-25, labels=RFP_F_offspring_levels, xpd=NA, srt=45, cex=1)
dev.off()

##################################################################################################
##################################################################################################
length(RFP_wMel_offspring$value)
mean(RFP_wMel_offspring$value, na.rm=TRUE)
> length(RFP_wMel_offspring$value)
[1] 23
> mean(RFP_wMel_offspring$value, na.rm=TRUE)
[1] 23.03238

length(RFP_uninf_offspring$value)
mean(RFP_uninf_offspring$value, na.rm=TRUE)
> length(RFP_uninf_offspring$value)
[1] 21
> mean(RFP_uninf_offspring$value, na.rm=TRUE)
[1] 31.57905

wilcox.test(RFP_wMel_offspring$value, RFP_uninf_offspring$value)
wilcox.test(RFP_wMel_offspring$value, meiP26RNAi_F_wMel_offspring$value)
wilcox.test(RFP_uninf_offspring$value, meiP26RNAi_F_uninf_offspring$value)

wilcox.test(RFP_wMel_offspring$value, meiP26RNAi_F_uninf_offspring$value)
wilcox.test(RFP_uninf_offspring$value, meiP26RNAi_F_wMel_offspring$value)


wilcox.test(WT_OreR_wMel_offspring$value, RFP_wMel_offspring$value)
wilcox.test(WT_OreR_uninf_offspring$value, RFP_uninf_offspring$value)


> wilcox.test(RFP_wMel_offspring$value, RFP_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_offspring$value and RFP_uninf_offspring$value
W = 159, p-value = 0.1248
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(RFP_wMel_offspring$value, RFP_uninf_offspring$value) :
  cannot compute exact p-value with ties
> wilcox.test(RFP_wMel_offspring$value, meiP26RNAi_F_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_offspring$value and meiP26RNAi_F_wMel_offspring$value
W = 441.5, p-value = 0.03494
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(RFP_uninf_offspring$value, meiP26RNAi_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_uninf_offspring$value and meiP26RNAi_F_uninf_offspring$value
W = 675, p-value = 0.005415
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(RFP_uninf_offspring$value, meiP26RNAi_F_uninf_offspring$value) :
  cannot compute exact p-value with ties



  > wilcox.test(RFP_wMel_offspring$value, meiP26RNAi_F_uninf_offspring$value)

  	Wilcoxon rank sum test with continuity correction

  data:  RFP_wMel_offspring$value and meiP26RNAi_F_uninf_offspring$value
  W = 542, p-value = 0.3421
  alternative hypothesis: true location shift is not equal to 0

  Warning message:
  In wilcox.test.default(RFP_wMel_offspring$value, meiP26RNAi_F_uninf_offspring$value) :
    cannot compute exact p-value with ties
  > wilcox.test(RFP_uninf_offspring$value, meiP26RNAi_F_wMel_offspring$value)

  	Wilcoxon rank sum test with continuity correction

  data:  RFP_uninf_offspring$value and meiP26RNAi_F_wMel_offspring$value
  W = 606, p-value = 0.7179
  alternative hypothesis: true location shift is not equal to 0

################################

wilcox.test(WT_OreR_uninf_offspring$value, meiP26RNAi_F_wMel_offspring$value)

> wilcox.test(WT_OreR_uninf_offspring$value, meiP26RNAi_F_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and meiP26RNAi_F_wMel_offspring$value
W = 3489, p-value = 0.005776
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_offspring$value, RFP_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and RFP_wMel_offspring$value
W = 1246.5, p-value = 0.4749
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_offspring$value, RFP_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and RFP_uninf_offspring$value
W = 1238.5, p-value = 0.1051
alternative hypothesis: true location shift is not equal to 0
