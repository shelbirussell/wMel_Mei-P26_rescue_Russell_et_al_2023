## load data and packages in load_data.R

###########
## make sure $V13 (eggs laid per day per day) is used, and not $V12 (total eggs laid per day)
####
## parse data and subset to 3-7 day old
###
WT_OreR_wMel_lay_full <- data.frame(group="WT_OreR_wMel", value=as.numeric(na.omit(WT_OreR_wMel$V13)), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(na.omit(WT_OreR_wMel$V13))), age=WT_OreR_wMel$V5, batch=WT_OreR_wMel$V1)
WT_OreR_wMel_lay <- subset(subset(WT_OreR_wMel_lay_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

WT_OreR_uninf_lay_full <- data.frame(group="WT_OreR_uninf", value=as.numeric(na.omit(WT_OreR_uninf$V13)), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(na.omit(WT_OreR_uninf$V13))), age=WT_OreR_uninf$V5, batch=WT_OreR_uninf$V1)
WT_OreR_uninf_lay <- subset(subset(WT_OreR_uninf_lay_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

WT_F10_OreR_uninf_lay_full <- data.frame(group="WT_F10_OreR_uninf", value=as.numeric(na.omit(WT_F10_OreR_uninf$V13)), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(na.omit(WT_F10_OreR_uninf$V13))), age=WT_F10_OreR_uninf$V5)
WT_F10_OreR_uninf_lay <- subset(subset(WT_F10_OreR_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

############

WT_Gal4CyO_wMel_lay_full <- data.frame(group="WT_Gal4CyO_wMel", value=as.numeric(na.omit(WT_Gal4CyO_wMel$V13)), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(na.omit(WT_Gal4CyO_wMel$V13))), age=WT_Gal4CyO_wMel$V5)
WT_Gal4CyO_wMel_lay <- subset(subset(WT_Gal4CyO_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_Gal4CyO_uninf_lay_full <- data.frame(group="WT_Gal4CyO_uninf", value=as.numeric(na.omit(WT_Gal4CyO_uninf$V13)), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(na.omit(WT_Gal4CyO_uninf$V13))), age=WT_Gal4CyO_uninf$V5)
WT_Gal4CyO_uninf_lay <- subset(subset(WT_Gal4CyO_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

############

WT_Gal4Sb_wMel_lay_full <- data.frame(group="WT_Gal4Sb_wMel", value=as.numeric(na.omit(WT_Gal4Sb_wMel$V13)), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(na.omit(WT_Gal4Sb_wMel$V13))), age=WT_Gal4Sb_wMel$V5)
WT_Gal4Sb_wMel_lay <- subset(subset(WT_Gal4Sb_wMel_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

WT_Gal4Sb_uninf_lay_full <- data.frame(group="WT_Gal4Sb_uninf", value=as.numeric(na.omit(WT_Gal4Sb_uninf$V13)), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(na.omit(WT_Gal4Sb_uninf$V13))), age=WT_Gal4Sb_uninf$V5)
WT_Gal4Sb_uninf_lay <- subset(subset(WT_Gal4Sb_uninf_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


###############################################################################
F_egg_lay <- rbind(WT_OreR_wMel_lay, WT_OreR_uninf_lay, WT_F10_OreR_uninf_lay, WT_Gal4CyO_wMel_lay, WT_Gal4CyO_uninf_lay, WT_Gal4Sb_wMel_lay, WT_Gal4Sb_uninf_lay)
## Make list of labels to match desired label order
F_lay_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("WT_F10_OreR_uninf"), paste("WT_Gal4CyO_wMel"), paste("WT_Gal4CyO_uninf"), paste("WT_Gal4Sb_wMel"), paste("WT_Gal4Sb_uninf"))

###############################################################################
## reorder by group for beeswarm
F_egg_lay$group <- factor(F_egg_lay$group, levels=F_lay_levels)

pdf("all-WT_F_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_lay$value ~ F_egg_lay$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="eggs laid / female / day", names=FALSE)
beeswarm(F_egg_lay$value ~ F_egg_lay$group, pwcol=F_egg_lay$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1.2)
text(x=0.8:length(F_lay_levels)-0.2, y=par("usr")[3]-20, labels=F_lay_levels, xpd=NA, srt=45, cex=1)
dev.off()

###############################################################################
F_egg_lay_pair <- rbind(WT_OreR_wMel_lay, WT_OreR_uninf_lay)
## this produces a data frame with samples in the intended order
F_lay_levels_pair <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"))
## reorder by group for beeswarm
F_egg_lay_pair$group <- factor(F_egg_lay_pair$group, levels=c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf")))

pdf("pair-WT_OreR_egg_lay_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_lay_pair$value ~ F_egg_lay_pair$group, outline=FALSE, col="white", xlab="", ylab="eggs laid / female / day", names=FALSE)
beeswarm(F_egg_lay_pair$value ~ F_egg_lay_pair$group, pwcol=F_egg_lay_pair$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(F_lay_levels_pair), y=par("usr")[3]-12, labels=F_lay_levels_pair, xpd=NA, srt=45, cex=1.2)
dev.off()

###############################################################################

##########################################################################
##########################################################################
##########################################################################
##########################################################################

wilcox.test(WT_OreR_wMel_lay$value, WT_OreR_wMel_recip_lay$value)

		Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and WT_OreR_wMel_recip_lay$value
W = 3833, p-value = 0.2291
alternative hypothesis: true location shift is not equal to 0


############
wilcox.test(WT_OreR_wMel_lay$value, WT_OreR_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and WT_OreR_uninf_lay$value
W = 9354, p-value = 0.9094
alternative hypothesis: true location shift is not equal to 0


#########
wilcox.test(WT_OreR_wMel_lay$value, WT_F10_OreR_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_lay$value and WT_F10_OreR_uninf_lay$value
W = 6164, p-value = 0.5178
alternative hypothesis: true location shift is not equal to 0


################
wilcox.test(WT_OreR_uninf_lay$value, WT_F10_OreR_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_lay$value and WT_F10_OreR_uninf_lay$value
W = 8797.5, p-value = 0.4778
alternative hypothesis: true location shift is not equal to 0

#############
wilcox.test(WT_Gal4CyO_wMel_lay$value, WT_Gal4CyO_uninf_lay$value)

> wilcox.test(WT_Gal4CyO_wMel_lay$value, WT_Gal4CyO_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_Gal4CyO_wMel_lay$value and WT_Gal4CyO_uninf_lay$value
W = 2986.5, p-value = 0.002216
alternative hypothesis: true location shift is not equal to 0

#############
wilcox.test(WT_Gal4Sb_wMel_lay$value, WT_Gal4Sb_uninf_lay$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_Gal4Sb_wMel_lay$value and WT_Gal4Sb_uninf_lay$value
W = 559, p-value = 1
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(WT_Gal4Sb_wMel_lay$value, WT_Gal4Sb_uninf_lay$value) :
  cannot compute exact p-value with ties


#######
#######
#######
#######

length(WT_OreR_wMel_lay$value)
mean(WT_OreR_wMel_lay$value)
> length(WT_OreR_wMel_lay$value)
[1] 115
> mean(WT_OreR_wMel_lay$value)
[1] 27.4907

length(WT_OreR_uninf_lay$value)
mean(WT_OreR_uninf_lay$value)
> length(WT_OreR_uninf_lay$value)
[1] 164
> mean(WT_OreR_uninf_lay$value)
[1] 27.69159

length(WT_F10_OreR_uninf_lay$value)
mean(WT_F10_OreR_uninf_lay$value)
> length(WT_F10_OreR_uninf_lay$value)
[1] 102
> mean(WT_F10_OreR_uninf_lay$value)
[1] 25.61775

length(WT_Gal4CyO_wMel_lay$value)
mean(WT_Gal4CyO_wMel_lay$value)
> length(WT_Gal4CyO_wMel_lay$value)
[1] 83
> mean(WT_Gal4CyO_wMel_lay$value)
[1] 42.35614

length(WT_Gal4CyO_uninf_lay$value)
mean(WT_Gal4CyO_uninf_lay$value)
> length(WT_Gal4CyO_uninf_lay$value)
[1] 55
> mean(WT_Gal4CyO_uninf_lay$value)
[1] 28.42691

length(WT_Gal4Sb_wMel_lay$value)
mean(WT_Gal4Sb_wMel_lay$value)
> length(WT_Gal4Sb_wMel_lay$value)
[1] 43
> mean(WT_Gal4Sb_wMel_lay$value)
[1] 34.20605

length(WT_Gal4Sb_uninf_lay$value)
mean(WT_Gal4Sb_uninf_lay$value)
> length(WT_Gal4Sb_uninf_lay$value)
[1] 26
> mean(WT_Gal4Sb_uninf_lay$value)
[1] 34.17154
