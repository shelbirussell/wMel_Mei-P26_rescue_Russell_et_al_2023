## load data and packages in load_data.R

###########
## make sure $V13 (eggs laid per day per day) is used, and not $V12 (total eggs laid per day)
####
## parse data and subset to 3-7 day old
###
WT_OreR_wMel_lay_full <- data.frame(group="WT_OreR_wMel", value=as.numeric(na.omit(WT_OreR_wMel$V13)), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(na.omit(WT_OreR_wMel$V13))), age=WT_OreR_wMel$V5, batch=WT_OreR_wMel$V1)
WT_OreR_wMel_lay <- subset(subset(WT_OreR_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_OreR_uninf_lay_full <- data.frame(group="WT_OreR_uninf", value=as.numeric(na.omit(WT_OreR_uninf$V13)), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(na.omit(WT_OreR_uninf$V13))), age=WT_OreR_uninf$V5, batch=WT_OreR_uninf$V1)
WT_OreR_uninf_lay <- subset(subset(WT_OreR_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_F10_OreR_uninf_lay_full <- data.frame(group="WT_F10_OreR_uninf", value=as.numeric(na.omit(WT_F10_OreR_uninf$V13)), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(na.omit(WT_F10_OreR_uninf$V13))), age=WT_F10_OreR_uninf$V5)
WT_F10_OreR_uninf_lay <- subset(subset(WT_F10_OreR_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


RFP_wMel_lay_full <- data.frame(group="RFP_wMel", value=as.numeric(na.omit(RFP_wMel$V13)), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(na.omit(RFP_wMel$V13))), age=RFP_wMel$V5)
RFP_wMel_lay <- subset(subset(RFP_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

RFP_uninf_lay_full <- data.frame(group="RFP_uninf", value=as.numeric(na.omit(RFP_uninf$V13)), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(na.omit(RFP_uninf$V13))), age=RFP_uninf$V5)
RFP_uninf_lay <- subset(subset(RFP_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


meiP26RNAi_F_wMel_lay_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(na.omit(meiP26RNAi_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V13))), age=meiP26RNAi_F_wMel$V5)
meiP26RNAi_F_wMel_lay <- subset(subset(meiP26RNAi_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_F_uninf_lay_full <- data.frame(group="meiP26RNAi_F_uninf", value=as.numeric(na.omit(meiP26RNAi_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V13))), age=meiP26RNAi_F_uninf$V5)
meiP26RNAi_F_uninf_lay <- subset(subset(meiP26RNAi_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_F_wMel_lay_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(na.omit(meiP261_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_F_wMel$V13))), age=meiP261_F_wMel$V5, batch=meiP261_F_wMel$V1)
meiP261_F_wMel_lay <- subset(subset(meiP261_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_F_uninf_lay_full <- data.frame(group="meiP261_F_uninf", value=as.numeric(na.omit(meiP261_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninf$V13))), age=meiP261_F_uninf$V5, batch=meiP261_F_uninf$V1)
meiP261_F_uninf_lay <- subset(subset(meiP261_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_F_wMel_lay_full <- data.frame(group="meiP26mfs1_F_wMel", value=as.numeric(na.omit(meiP26mfs1_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_wMel$V13))), age=meiP26mfs1_F_wMel$V5)
meiP26mfs1_F_wMel_lay <- subset(subset(meiP26mfs1_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_F_uninf_lay_full <- data.frame(group="meiP26mfs1_F_uninf", value=as.numeric(na.omit(meiP26mfs1_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_uninf$V13))), age=meiP26mfs1_F_uninf$V5)
meiP26mfs1_F_uninf_lay <- subset(subset(meiP26mfs1_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_mfs1_F_wMel_lay_full <- data.frame(group="meiP261_mfs1_F_wMel", value=as.numeric(na.omit(meiP261_mfs1_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_wMel$V13))), age=meiP261_mfs1_F_wMel$V5)
meiP261_mfs1_F_wMel_lay <- subset(subset(meiP261_mfs1_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_mfs1_F_uninf_lay_full <- data.frame(group="meiP261_mfs1_F_uninf", value=as.numeric(na.omit(meiP261_mfs1_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_uninf$V13))), age=meiP261_mfs1_F_uninf$V5)
meiP261_mfs1_F_uninf_lay <- subset(subset(meiP261_mfs1_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


############
###############################################################################
## make combined data.frame
F_egg_lay <- rbind(WT_OreR_wMel_lay, WT_OreR_uninf_lay, meiP26RNAi_F_wMel_lay, meiP26RNAi_F_uninf_lay, meiP261_F_wMel_lay, meiP261_F_uninf_lay, meiP26mfs1_F_wMel_lay, meiP26mfs1_F_uninf_lay, meiP261_mfs1_F_wMel_lay, meiP261_mfs1_F_uninf_lay)

## Make list of labels to match desired label order
F_lay_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))


###############################################################################
## reorder by group for beeswarm
F_egg_lay$group <- factor(F_egg_lay$group, levels=F_lay_levels)

pdf("comb.meiP26-WT_F_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_lay$value ~ F_egg_lay$group, outline=FALSE, col="white", ylim=c(0,130), xlab="", ylab="eggs laid / female / day", names=FALSE)
beeswarm(F_egg_lay$value ~ F_egg_lay$group, pwcol=F_egg_lay$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1.2)
text(x=0.8:length(F_lay_levels)-0.2, y=par("usr")[3]-20, labels=F_lay_levels, xpd=NA, srt=45, cex=1)
dev.off()

###############################################################################
###############################################################################
###############################################################################

## make combined data.frame
RFP_F_egg_lay <- rbind(WT_OreR_wMel_lay, WT_OreR_uninf_lay, RFP_wMel_lay, RFP_uninf_lay, meiP26RNAi_F_wMel_lay, meiP26RNAi_F_uninf_lay, meiP261_F_wMel_lay, meiP261_F_uninf_lay, meiP26mfs1_F_wMel_lay, meiP26mfs1_F_uninf_lay, meiP261_mfs1_F_wMel_lay, meiP261_mfs1_F_uninf_lay)
## Make list of labels to match desired label order
RFP_F_lay_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("RFP_wMel"), paste("RFP_uninf"), paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))
## reorder by group for beeswarm
RFP_F_egg_lay$group <- factor(RFP_F_egg_lay$group, levels=RFP_F_lay_levels)

pdf("comb.meiP26-WT_RFP_F_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(RFP_F_egg_lay$value ~ RFP_F_egg_lay$group, outline=FALSE, col="white", ylim=c(0,130), xlab="", ylab="eggs laid / female / day", names=FALSE)
beeswarm(RFP_F_egg_lay$value ~ RFP_F_egg_lay$group, pwcol=RFP_F_egg_lay$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1.2)
text(x=0.8:length(F_lay_levels)-0.2, y=par("usr")[3]-20, labels=F_lay_levels, xpd=NA, srt=45, cex=1)
dev.off()

###############################################################################
##########################################################################
##########################################################################
##########################################################################
##########################################################################


length(RFP_wMel_lay$value)
mean(RFP_wMel_lay$value, na.rm=TRUE)

length(RFP_uninf_lay$value)
mean(RFP_uninf_lay$value, na.rm=TRUE)

wilcox.test(RFP_wMel_lay$value, RFP_uninf_lay$value)
wilcox.test(RFP_wMel_lay$value, meiP26RNAi_F_wMel_lay$value)
wilcox.test(RFP_uninf_lay$value, meiP26RNAi_F_uninf_lay$value)

wilcox.test(RFP_wMel_lay$value, meiP26RNAi_F_uninf_lay$value)
wilcox.test(RFP_uninf_lay$value, meiP26RNAi_F_wMel_lay$value)

wilcox.test(WT_OreR_uninf_lay$value, meiP26RNAi_F_wMel_lay$value)


wilcox.test(WT_OreR_wMel_lay$value, RFP_wMel_lay$value)
wilcox.test(WT_OreR_uninf_lay$value, RFP_uninf_lay$value)


> length(RFP_wMel_lay$value)
[1] 23
> mean(RFP_wMel_lay$value, na.rm=TRUE)
[1] 23.41565
>
> length(RFP_uninf_lay$value)
[1] 21
> mean(RFP_uninf_lay$value, na.rm=TRUE)
[1] 34.87381
>
> wilcox.test(RFP_wMel_lay$value, RFP_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_lay$value and RFP_uninf_lay$value
W = 164.5, p-value = 0.07222
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(RFP_wMel_lay$value, RFP_uninf_lay$value) :
  cannot compute exact p-value with ties
> wilcox.test(RFP_wMel_lay$value, meiP26RNAi_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_lay$value and meiP26RNAi_F_wMel_lay$value
W = 431.5, p-value = 0.002174
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(RFP_uninf_lay$value, meiP26RNAi_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_uninf_lay$value and meiP26RNAi_F_uninf_lay$value
W = 758, p-value = 0.1681
alternative hypothesis: true location shift is not equal to 0

>
> wilcox.test(RFP_wMel_lay$value, meiP26RNAi_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_lay$value and meiP26RNAi_F_uninf_lay$value
W = 669, p-value = 0.8341
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(RFP_uninf_lay$value, meiP26RNAi_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_uninf_lay$value and meiP26RNAi_F_wMel_lay$value
W = 556, p-value = 0.1757
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_lay$value, meiP26RNAi_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and meiP26RNAi_F_wMel_lay$value
W = 3507.5, p-value = 3.014e-05
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_wMel_lay$value, RFP_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and RFP_wMel_lay$value
W = 1499, p-value = 0.3146
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_lay$value, RFP_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and RFP_uninf_lay$value
W = 1357, p-value = 0.1146
alternative hypothesis: true location shift is not equal to 0
