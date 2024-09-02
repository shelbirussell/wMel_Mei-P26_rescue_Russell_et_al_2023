
###########
## Females
## make sure $V13 (eggs laid per day per day) is used, and not $V12 (total eggs laid per day)
## parse data and subset to 3-7 day old
###
#### deeppink2 == rgb(0.93,0.07,0.54,0.7)
#### lightpink1 == rgb(0.933,0.635,0.678,0.7)

meiP26RNAi_F_wMel_lay_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(na.omit(meiP26RNAi_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V13))), age=meiP26RNAi_F_wMel$V5)
meiP26RNAi_F_wMel_lay <- subset(subset(meiP26RNAi_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_F_uninf_lay_full <- data.frame(group="meiP26RNAi_F_uninf", value=as.numeric(na.omit(meiP26RNAi_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V13))), age=meiP26RNAi_F_uninf$V5)
meiP26RNAi_F_uninf_lay <- subset(subset(meiP26RNAi_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_F_wMel_lay_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(na.omit(meiP261_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_F_wMel$V13))), age=meiP261_F_wMel$V5, batch=meiP261_F_wMel$V1)
meiP261_F_wMel_lay <- subset(subset(meiP261_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

meiP261_F_uninf_lay_full <- data.frame(group="meiP261_F_uninf", value=as.numeric(na.omit(meiP261_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninf$V13))), age=meiP261_F_uninf$V5, batch=meiP261_F_uninf$V1)
meiP261_F_uninf_lay <- subset(subset(meiP261_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

meiP261_F_uninfxwMel_lay_full <- data.frame(group="meiP261_F_uninfxwMel", value=as.numeric(na.omit(meiP261_F_uninfxwMel$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninfxwMel$V13))), age=meiP261_F_uninfxwMel$V5)
meiP261_F_uninfxwMel_lay <- subset(subset(meiP261_F_uninfxwMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_F_wMel_lay_full <- data.frame(group="meiP26mfs1_F_wMel", value=as.numeric(na.omit(meiP26mfs1_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_wMel$V13))), age=meiP26mfs1_F_wMel$V5)
meiP26mfs1_F_wMel_lay <- subset(subset(meiP26mfs1_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_F_uninf_lay_full <- data.frame(group="meiP26mfs1_F_uninf", value=as.numeric(na.omit(meiP26mfs1_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_uninf$V13))), age=meiP26mfs1_F_uninf$V5)
meiP26mfs1_F_uninf_lay <- subset(subset(meiP26mfs1_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_mfs1_F_wMel_lay_full <- data.frame(group="meiP261_mfs1_F_wMel", value=as.numeric(na.omit(meiP261_mfs1_F_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_wMel$V13))), age=meiP261_mfs1_F_wMel$V5)
meiP261_mfs1_F_wMel_lay <- subset(subset(meiP261_mfs1_F_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_mfs1_F_uninf_lay_full <- data.frame(group="meiP261_mfs1_F_uninf", value=as.numeric(na.omit(meiP261_mfs1_F_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_uninf$V13))), age=meiP261_mfs1_F_uninf$V5)
meiP261_mfs1_F_uninf_lay <- subset(subset(meiP261_mfs1_F_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


###############
##
###########
F_egg_lay <- rbind(meiP26RNAi_F_wMel_lay, meiP26RNAi_F_uninf_lay, meiP261_F_wMel_lay, meiP261_F_uninf_lay, meiP26mfs1_F_wMel_lay, meiP26mfs1_F_uninf_lay, meiP261_mfs1_F_wMel_lay, meiP261_mfs1_F_uninf_lay)
#F_egg_lay <- rbind(meiP26RNAi_F_wMel_lay, meiP26RNAi_F_uninf_lay, meiP261_F_wMel_lay, meiP261_F_uninf_lay, meiP261_F_uninfxwMel_lay, meiP26mfs1_F_wMel_lay, meiP26mfs1_F_uninf_lay, meiP261_mfs1_F_wMel_lay, meiP261_mfs1_F_uninf_lay)

## Make list of labels to match desired label order
F_lay_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))
#F_lay_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_F_uninfxwMel"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))

#########################
###################################
## reorder by group for beeswarm
F_egg_lay$group <- factor(F_egg_lay$group, levels=F_lay_levels)

pdf("mei-P26_knockdown_F_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_lay$value ~ F_egg_lay$group, outline=FALSE, col="white", xlab="", ylab="eggs laid / female / day", names=FALSE)
beeswarm(F_egg_lay$value ~ F_egg_lay$group, pwcol=F_egg_lay$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(F_lay_levels)-0.5, y=par("usr")[3]-25, labels=F_lay_levels, xpd=NA, srt=45, cex=1.2)
dev.off()

##################
### subset plot for seminar
subF_egg_lay <- rbind(meiP26RNAi_F_wMel_lay, meiP26RNAi_F_uninf_lay, meiP261_F_wMel_lay, meiP261_F_uninf_lay)

## Make list of labels to match desired label order
subF_lay_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"))

pdf("pair-mei-P26_knockdown_subF_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(subF_egg_lay$value ~ subF_egg_lay$group, outline=FALSE, col="white", xlab="", ylab="eggs laid / female / day", names=FALSE)
beeswarm(subF_egg_lay$value ~ subF_egg_lay$group, pwcol=subF_egg_lay$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(subF_lay_levels)-0.5, y=par("usr")[3]-25, labels=subF_lay_levels, xpd=NA, srt=45, cex=1.2)
dev.off()

#########################
###################################
## reorder by group for beeswarm
subF_egg_lay$group <- factor(subF_egg_lay$group, levels=subF_lay_levels)

pdf("subset_mei-P26_knockdown_F_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(subF_egg_lay$value ~ subF_egg_lay$group, outline=FALSE, col="white", xlab="", ylab="eggs laid / female / day", names=FALSE)
beeswarm(subF_egg_lay$value ~ subF_egg_lay$group, pwcol=subF_egg_lay$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(subF_lay_levels)-0.5, y=par("usr")[3]-25, labels=subF_lay_levels, xpd=NA, srt=45, cex=1.2)
dev.off()


#######################################
#######################################
### Males

##############
meiP26RNAi_M_wMel_lay_full <- data.frame(group="meiP26RNAi_M_wMel", value=as.numeric(na.omit(meiP26RNAi_M_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_M_wMel$V13))), age=meiP26RNAi_M_wMel$V5)
meiP26RNAi_M_wMel_lay <- subset(subset(meiP26RNAi_M_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_M_uninf_lay_full <- data.frame(group="meiP26RNAi_M_uninf", value=as.numeric(na.omit(meiP26RNAi_M_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_M_uninf$V13))), age=meiP26RNAi_M_uninf$V5)
meiP26RNAi_M_uninf_lay <- subset(subset(meiP26RNAi_M_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_M_wMel_lay_full <- data.frame(group="meiP261_M_wMel", value=as.numeric(na.omit(meiP261_M_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_M_wMel$V13))), age=meiP261_M_wMel$V5)
meiP261_M_wMel_lay <- subset(subset(meiP261_M_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_M_uninf_lay_full <- data.frame(group="meiP261_M_uninf", value=as.numeric(na.omit(meiP261_M_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_M_uninf$V13))), age=meiP261_M_uninf$V5)
meiP261_M_uninf_lay <- subset(subset(meiP261_M_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_M_wMel_lay_full <- data.frame(group="meiP26mfs1_M_wMel", value=as.numeric(na.omit(meiP26mfs1_M_wMel$V13)), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_M_wMel$V13))), age=meiP26mfs1_M_wMel$V5)
meiP26mfs1_M_wMel_lay <- subset(subset(meiP26mfs1_M_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_M_uninf_lay_full <- data.frame(group="meiP26mfs1_M_uninf", value=as.numeric(na.omit(meiP26mfs1_M_uninf$V13)), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_M_uninf$V13))), age=meiP26mfs1_M_uninf$V5)
meiP26mfs1_M_uninf_lay <- subset(subset(meiP26mfs1_M_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

##
#########
M_egg_lay <- rbind(meiP26RNAi_M_wMel_lay, meiP26RNAi_M_uninf_lay, meiP261_M_wMel_lay, meiP261_M_uninf_lay, meiP26mfs1_M_wMel_lay, meiP26mfs1_M_uninf_lay)

## Make list of labels to match desired label order
M_lay_levels <- c(paste("meiP26RNAi_M_wMel"), paste("meiP26RNAi_M_uninf"), paste("meiP261_M_wMel"), paste("meiP261_M_uninf"), paste("meiP26mfs1_M_wMel"), paste("meiP26mfs1_M_uninf"))

#########################
###################################
## reorder by group for beeswarm
M_egg_lay$group <- factor(M_egg_lay$group, levels=M_lay_levels)

pdf("mei-P26_knockdown_M_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(M_egg_lay$value ~ M_egg_lay$group, outline=FALSE, col="white", xlab="", ylab="eggs laid per female per day", names=FALSE)
beeswarm(M_egg_lay$value ~ M_egg_lay$group, pwcol=M_egg_lay$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(M_lay_levels)-0.5, y=par("usr")[3]-25, labels=M_lay_levels, xpd=NA, srt=45, cex=1.2)
dev.off()



#######################################
#################################################################################33
#################################################################################33

> wilcox.test(meiP26RNAi_F_wMel_lay$value, meiP26RNAi_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_F_wMel_lay$value and meiP26RNAi_F_uninf_lay$value
W = 2525, p-value = 0.001165
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP261_F_wMel_lay$value, meiP261_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_F_wMel_lay$value and meiP261_F_uninf_lay$value
W = 1626, p-value = 0.02824
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP26mfs1_F_wMel_lay$value, meiP26mfs1_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_F_wMel_lay$value and meiP26mfs1_F_uninf_lay$value
W = 389.5, p-value = 3.035e-05
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26mfs1_F_wMel_lay$value, meiP26mfs1_F_uninf_lay$value) :
  cannot compute exact p-value with ties
> wilcox.test(meiP261_mfs1_F_wMel_lay$value, meiP261_mfs1_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_mfs1_F_wMel_lay$value and meiP261_mfs1_F_uninf_lay$value
W = 866.5, p-value = 4.712e-05
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_mfs1_F_wMel_lay$value, meiP261_mfs1_F_uninf_lay$value) :
  cannot compute exact p-value with ties

#############
wilcox.test(WT_OreR_wMel_lay$value, meiP26RNAi_F_uninf_lay$value)
wilcox.test(WT_OreR_uninf_lay$value, meiP26RNAi_F_wMel_lay$value)

wilcox.test(WT_OreR_wMel_lay$value, meiP26RNAi_F_wMel_lay$value)
wilcox.test(WT_OreR_uninf_lay$value, meiP26RNAi_F_uninf_lay$value)

wilcox.test(WT_OreR_wMel_lay$value, meiP261_F_wMel_lay$value)
wilcox.test(WT_OreR_uninf_lay$value, meiP261_F_uninf_lay$value)

wilcox.test(WT_OreR_wMel_lay$value, meiP26mfs1_F_wMel_lay$value)
wilcox.test(WT_OreR_uninf_lay$value, meiP26mfs1_F_uninf_lay$value)

wilcox.test(WT_OreR_wMel_lay$value, meiP261_mfs1_F_wMel_lay$value)
wilcox.test(WT_OreR_uninf_lay$value, meiP261_mfs1_F_uninf_lay$value)

>

> wilcox.test(WT_OreR_wMel_lay$value, meiP26RNAi_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP26RNAi_F_uninf_lay$value
W = 3650.5, p-value = 0.5291
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_lay$value, meiP26RNAi_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and meiP26RNAi_F_wMel_lay$value
W = 3507.5, p-value = 3.014e-05
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_lay$value, meiP26RNAi_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP26RNAi_F_wMel_lay$value
W = 2445.5, p-value = 6.991e-05
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_lay$value, meiP26RNAi_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and meiP26RNAi_F_uninf_lay$value
W = 5200, p-value = 0.5148
alternative hypothesis: true location shift is not equal to 0

##

> wilcox.test(WT_OreR_wMel_lay$value, meiP261_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP261_F_wMel_lay$value
W = 5852.5, p-value = 5.13e-06
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_lay$value, meiP261_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and meiP261_F_uninf_lay$value
W = 6132, p-value = 1.025e-11
alternative hypothesis: true location shift is not equal to 0

##

> wilcox.test(WT_OreR_wMel_lay$value, meiP26mfs1_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP26mfs1_F_wMel_lay$value
W = 2622.5, p-value = 1.122e-10
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_lay$value, meiP26mfs1_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and meiP26mfs1_F_uninf_lay$value
W = 2983, p-value = 6.306e-11
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_lay$value, meiP261_mfs1_F_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP261_mfs1_F_wMel_lay$value
W = 4006, p-value = 2.667e-10
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_lay$value, meiP261_mfs1_F_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and meiP261_mfs1_F_uninf_lay$value
W = 5751, p-value < 2.2e-16
alternative hypothesis: true location shift is not equal to 0

#############
###########################
###########################
#### Males
###########
wilcox.test(WT_OreR_wMel_lay$value, meiP26RNAi_M_wMel_lay$value)
wilcox.test(meiP26RNAi_M_uninf_lay$value, WT_OreR_uninf_lay$value)

> wilcox.test(WT_OreR_wMel_lay$value, meiP26RNAi_M_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP26RNAi_M_wMel_lay$value
W = 1687.5, p-value = 0.03582
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP26RNAi_M_uninf_lay$value, WT_OreR_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_M_uninf_lay$value and WT_OreR_uninf_lay$value
W = 4063.5, p-value = 0.03898
alternative hypothesis: true location shift is not equal to 0

###
wilcox.test(WT_OreR_wMel_lay$value, meiP261_M_wMel_lay$value)
wilcox.test(meiP261_M_uninf_lay$value, WT_OreR_uninf_lay$value)

> wilcox.test(WT_OreR_wMel_lay$value, meiP261_M_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP261_M_wMel_lay$value
W = 1743, p-value = 0.2317
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP261_M_uninf_lay$value, WT_OreR_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_M_uninf_lay$value and WT_OreR_uninf_lay$value
W = 2719, p-value = 0.1199
alternative hypothesis: true location shift is not equal to 0


###
wilcox.test(WT_OreR_wMel_lay$value, meiP26mfs1_M_wMel_lay$value)
wilcox.test(meiP26mfs1_M_uninf_lay$value, WT_OreR_uninf_lay$value)

> wilcox.test(WT_OreR_wMel_lay$value, meiP26mfs1_M_wMel_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and meiP26mfs1_M_wMel_lay$value
W = 1208, p-value = 1
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP26mfs1_M_uninf_lay$value, WT_OreR_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_M_uninf_lay$value and WT_OreR_uninf_lay$value
W = 445.5, p-value = 8.594e-12
alternative hypothesis: true location shift is not equal to 0

###
wilcox.test(meiP26RNAi_M_wMel_lay$value, meiP26RNAi_M_uninf_lay$value)
wilcox.test(meiP261_M_wMel_lay$value, meiP261_M_uninf_lay$value)
wilcox.test(meiP26mfs1_M_wMel_lay$value, meiP26mfs1_M_uninf_lay$value)

> wilcox.test(meiP26RNAi_M_wMel_lay$value, meiP26RNAi_M_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_M_wMel_lay$value and meiP26RNAi_M_uninf_lay$value
W = 767, p-value = 0.9101
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26RNAi_M_wMel_lay$value, meiP26RNAi_M_uninf_lay$value) :
  cannot compute exact p-value with ties
> wilcox.test(meiP261_M_wMel_lay$value, meiP261_M_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_M_wMel_lay$value and meiP261_M_uninf_lay$value
W = 488, p-value = 0.9834
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_M_wMel_lay$value, meiP261_M_uninf_lay$value) :
  cannot compute exact p-value with ties
> wilcox.test(meiP26mfs1_M_wMel_lay$value, meiP26mfs1_M_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_M_wMel_lay$value and meiP26mfs1_M_uninf_lay$value
W = 503, p-value = 6.097e-06
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26mfs1_M_wMel_lay$value, meiP26mfs1_M_uninf_lay$value) :
  cannot compute exact p-value with ties

#####
#####
#####
#############
length(meiP26RNAi_F_wMel_lay$value)
mean(meiP26RNAi_F_wMel_lay$value)
> length(meiP26RNAi_F_wMel_lay$value)
[1] 66
> mean(meiP26RNAi_F_wMel_lay$value)
[1] 45.89348

length(meiP26RNAi_F_uninf_lay$value)
mean(meiP26RNAi_F_uninf_lay$value)
> length(meiP26RNAi_F_uninf_lay$value)
[1] 60
> mean(meiP26RNAi_F_uninf_lay$value)
[1] 28.88783

length(meiP261_F_wMel_lay$value)
mean(meiP261_F_wMel_lay$value)
> length(meiP261_F_wMel_lay$value)
[1] 73
> mean(meiP261_F_wMel_lay$value)
[1] 16.0889

length(meiP261_F_uninf_lay$value)
mean(meiP261_F_uninf_lay$value)
> length(meiP261_F_uninf_lay$value)
[1] 45
> mean(meiP261_F_uninf_lay$value)
[1] 6.091778

length(meiP26mfs1_F_wMel_lay$value)
mean(meiP26mfs1_F_wMel_lay$value)
> length(meiP26mfs1_F_wMel_lay$value)
[1] 25
> mean(meiP26mfs1_F_wMel_lay$value)
[1] 2.5216

length(meiP26mfs1_F_uninf_lay$value)
mean(meiP26mfs1_F_uninf_lay$value)
> length(meiP26mfs1_F_uninf_lay$value)
[1] 19
> mean(meiP26mfs1_F_uninf_lay$value)
[1] 0

length(meiP261_mfs1_F_wMel_lay$value)
mean(meiP261_mfs1_F_wMel_lay$value)
> length(meiP261_mfs1_F_wMel_lay$value)
[1] 42
> mean(meiP261_mfs1_F_wMel_lay$value)
[1] 8.40119

length(meiP261_mfs1_F_uninf_lay$value)
mean(meiP261_mfs1_F_uninf_lay$value)
> length(meiP261_mfs1_F_uninf_lay$value)
[1] 37
> mean(meiP261_mfs1_F_uninf_lay$value)
[1] 0.1821622


#############
###########################
###########################
#### Males
###########
length(meiP26RNAi_M_wMel_lay$value)
mean(meiP26RNAi_M_wMel_lay$value)
> length(meiP26RNAi_M_wMel_lay$value)
[1] 38
> mean(meiP26RNAi_M_wMel_lay$value)
[1] 34.84158

length(meiP26RNAi_M_uninf_lay$value)
mean(meiP26RNAi_M_uninf_lay$value)
> length(meiP26RNAi_M_uninf_lay$value)
[1] 41
> mean(meiP26RNAi_M_uninf_lay$value)
[1] 36.29756

length(meiP261_M_wMel_lay$value)
mean(meiP261_M_wMel_lay$value)
> length(meiP261_M_wMel_lay$value)
[1] 35
> mean(meiP261_M_wMel_lay$value)
[1] 34.64314

length(meiP261_M_uninf_lay$value)
mean(meiP261_M_uninf_lay$value)
> length(meiP261_M_uninf_lay$value)
[1] 28
> mean(meiP261_M_uninf_lay$value)
[1] 33.4675

length(meiP26mfs1_M_wMel_lay$value)
mean(meiP26mfs1_M_wMel_lay$value)
> length(meiP26mfs1_M_wMel_lay$value)
[1] 21
> mean(meiP26mfs1_M_wMel_lay$value)
[1] 28.79429

length(meiP26mfs1_M_uninf_lay$value)
mean(meiP26mfs1_M_uninf_lay$value)
> length(meiP26mfs1_M_uninf_lay$value)
[1] 28
> mean(meiP26mfs1_M_uninf_lay$value)
[1] 2.509286
