####################################
## Total fecundity per day
## V17 = # hatched larvae / day
####################
## parse data and subset to 3-7 day old
###################
## Dmel CI
###
DmelCI_offspring_full <- data.frame(group="DmelCI", ageF=as.numeric(DmelCI$V5), ageM=as.numeric(DmelCI$V9), value=as.numeric(DmelCI$V17), color=rgb(1,0.19,0.19,0.7), samples=length(as.numeric(DmelCI$V17)))
## select 3-7d old
DmelCI_offspring_0M <- subset(subset(subset(DmelCI_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))
DmelCI_offspring_5M <- subset(subset(subset(DmelCI_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >=1, select=c(group, value, color, samples, ageF, ageM))


DmelRescue_offspring_full <- data.frame(group="DmelRescue", ageF=as.numeric(DmelRescue$V5), ageM=as.numeric(DmelRescue$V9), value=as.numeric(DmelRescue$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DmelRescue$V17)))
## select 3-7d old
DmelRescue_offspring_0M <- subset(subset(subset(DmelRescue_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))

## doesn't exist in this dataset (==WT OreR wMelDB)
##DmelRescue_offspring_5M <- subset(subset(subset(DmelRescue_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >=1, select=c(group, value, color, samples, ageF, ageM))
### WT data for old rescue dataset, pasted into new sheet
DmelRescueOldMales_full <- data.frame(group="DmelRescue", ageF=as.numeric(DmelRescueOldMales$V5), ageM=as.numeric(DmelRescueOldMales$V9), value=as.numeric(DmelRescueOldMales$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DmelRescueOldMales$V17)))
DmelRescue_offspring_5M <- subset(subset(subset(DmelRescueOldMales_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >=1, select=c(group, value, color, samples, ageF, ageM))

################
#### Dsim CI
DsimCI_offspring_full <- data.frame(group="DsimCI", ageF=as.numeric(DsimCI$V5), ageM=as.numeric(DsimCI$V9), value=as.numeric(DsimCI$V17), color=rgb(0.8,0.15,0.15,0.7), samples=length(as.numeric(DsimCI$V17)))
## select 3-7d old
DsimCI_offspring_0M <- subset(subset(subset(DsimCI_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))
DsimCI_offspring_5M <- subset(subset(subset(DsimCI_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >=1, select=c(group, value, color, samples, ageF, ageM))


DsimRescue_offspring_full <- data.frame(group="DsimRescue", ageF=as.numeric(DsimRescue$V5), ageM=as.numeric(DsimRescue$V9), value=as.numeric(DsimRescue$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DsimRescue$V17)))
## select 3-7d old
DsimRescue_offspring_0M <- subset(subset(subset(DsimRescue_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))
DsimRescue_offspring_5M <- subset(subset(subset(DsimRescue_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >=1, select=c(group, value, color, samples, ageF, ageM))

##############
#### reciprocal Dmel
DmelReciprocal_offspring_full <- data.frame(group="DmelRecip", ageF=as.numeric(WT_OreR_wMel_recip$V5), ageM=as.numeric(WT_OreR_wMel_recip$V9), value=as.numeric(WT_OreR_wMel_recip$V17), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel_recip$V17)))
DmelReciprocal_offspring_0M <- subset(subset(subset(DmelReciprocal_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))
DmelReciprocal_offspring_5M <- subset(subset(subset(DmelReciprocal_offspring_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >=1, select=c(group, value, color, samples, ageF, ageM))



#########################################
#### Bind data
Dmel_CI_offspring_0M <- rbind(DmelCI_offspring_0M, DmelRescue_offspring_0M, DmelReciprocal_offspring_0M)
## this produces a data frame with samples in the intended order
Dmel_CI_offspring_0M_levels <- c(paste("DmelCI"), paste("DmelRescue"), paste("DmelRecip"))
## reorder by group for beeswarm
Dmel_CI_offspring_0M$group <- factor(Dmel_CI_offspring_0M$group, levels=Dmel_CI_offspring_0M_levels)

pdf("Dmel-CI_offspring_0M_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dmel_CI_offspring_0M$value ~ Dmel_CI_offspring_0M$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / day", names=FALSE)
beeswarm(Dmel_CI_offspring_0M$value ~ Dmel_CI_offspring_0M$group, pwcol=Dmel_CI_offspring_0M$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(Dmel_CI_offspring_0M_levels), y=par("usr")[3]-25, labels=Dmel_CI_offspring_0M_levels, xpd=NA, srt=45, cex=1)
dev.off()


###############

Dmel_CI_offspring_5M <- rbind(DmelCI_offspring_5M, DmelRescue_offspring_5M, DmelReciprocal_offspring_5M)
## this produces a data frame with samples in the intended order
Dmel_CI_offspring_5M_levels <- c(paste("DmelCI"), paste("DmelRescue"), paste("DmelRecip"))
## reorder by group for beeswarm
Dmel_CI_offspring_5M$group <- factor(Dmel_CI_offspring_5M$group, levels=Dmel_CI_offspring_5M_levels)

pdf("Dmel-CI_offspring_5M_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dmel_CI_offspring_5M$value ~ Dmel_CI_offspring_5M$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / day", names=FALSE)
beeswarm(Dmel_CI_offspring_5M$value ~ Dmel_CI_offspring_5M$group, pwcol=Dmel_CI_offspring_5M$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(Dmel_CI_offspring_5M_levels), y=par("usr")[3]-25, labels=Dmel_CI_offspring_5M_levels, xpd=NA, srt=45, cex=1)
dev.off()


###############
###############
Dsim_CI_offspring_0M <- rbind(DsimCI_offspring_0M, DsimRescue_offspring_0M)
## this produces a data frame with samples in the intended order
Dsim_CI_offspring_0M_levels <- c(paste("DsimCI"), paste("DsimRescue"))
## reorder by group for beeswarm
Dsim_CI_offspring_0M$group <- factor(Dsim_CI_offspring_0M$group, levels=Dsim_CI_offspring_0M_levels)

pdf("Dsim-CI_offspring_0M_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dsim_CI_offspring_0M$value ~ Dsim_CI_offspring_0M$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / day", names=FALSE)
beeswarm(Dsim_CI_offspring_0M$value ~ Dsim_CI_offspring_0M$group, pwcol=Dsim_CI_offspring_0M$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(Dsim_CI_offspring_0M_levels), y=par("usr")[3]-25, labels=Dsim_CI_offspring_0M_levels, xpd=NA, srt=45, cex=1)
dev.off()


###############

Dsim_CI_offspring_5M <- rbind(DsimCI_offspring_5M, DsimRescue_offspring_5M)
## this produces a data frame with samples in the intended order
Dsim_CI_offspring_5M_levels <- c(paste("DsimCI"), paste("DsimRescue"))
## reorder by group for beeswarm
Dsim_CI_offspring_5M$group <- factor(Dsim_CI_offspring_5M$group, levels=Dsim_CI_offspring_5M_levels)

pdf("Dsim-CI_offspring_5M_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dsim_CI_offspring_5M$value ~ Dsim_CI_offspring_5M$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / day", names=FALSE)
beeswarm(Dsim_CI_offspring_5M$value ~ Dsim_CI_offspring_5M$group, pwcol=Dsim_CI_offspring_5M$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(Dsim_CI_offspring_5M_levels), y=par("usr")[3]-25, labels=Dsim_CI_offspring_5M_levels, xpd=NA, srt=45, cex=1)
dev.off()

#######################

wilcox.test(DmelCI_offspring_0M$value, DmelRescue_offspring_0M$value)
wilcox.test(DmelCI_offspring_0M$value, DmelReciprocal_offspring_0M$value)
wilcox.test(DmelReciprocal_offspring_0M$value, DmelRescue_offspring_0M$value)
wilcox.test(DmelCI_offspring_5M$value, DmelRescue_offspring_5M$value)
wilcox.test(DmelCI_offspring_5M$value, DmelReciprocal_offspring_5M$value)
wilcox.test(DmelReciprocal_offspring_5M$value, DmelRescue_offspring_5M$value)
wilcox.test(DsimCI_offspring_0M$value, DsimRescue_offspring_0M$value)
wilcox.test(DsimCI_offspring_5M$value, DsimRescue_offspring_5M$value)

wilcox.test(DmelCI_offspring_0M$value, DmelRescue_offspring_0M$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_offspring_0M$value and DmelRescue_offspring_0M$value
W = 1321, p-value = 0.01712
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(DmelCI_offspring_0M$value, DmelReciprocal_offspring_0M$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_offspring_0M$value and DmelReciprocal_offspring_0M$value
W = 187, p-value = 0.01061
alternative hypothesis: true location shift is not equal to 0



> wilcox.test(DmelReciprocal_offspring_0M$value, DmelRescue_offspring_0M$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelReciprocal_offspring_0M$value and DmelRescue_offspring_0M$value
W = 451, p-value = 0.1714
alternative hypothesis: true location shift is not equal to 0

#######

> wilcox.test(DmelCI_offspring_5M$value, DmelRescue_offspring_5M$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_offspring_5M$value and DmelRescue_offspring_5M$value
W = 789.5, p-value = 0.9273
alternative hypothesis: true location shift is not equal to 0

#####

> wilcox.test(DmelCI_offspring_5M$value, DmelReciprocal_offspring_5M$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_offspring_5M$value and DmelReciprocal_offspring_5M$value
W = 248.5, p-value = 0.3628
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DmelCI_offspring_5M$value, DmelReciprocal_offspring_5M$value) :
  cannot compute exact p-value with ties


> wilcox.test(DmelReciprocal_offspring_5M$value, DmelRescue_offspring_5M$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelReciprocal_offspring_5M$value and DmelRescue_offspring_5M$value
W = 431, p-value = 0.192
alternative hypothesis: true location shift is not equal to 0


##########

> wilcox.test(DsimCI_offspring_0M$value, DsimRescue_offspring_0M$value)

	Wilcoxon rank sum test with continuity correction

data:  DsimCI_offspring_0M$value and DsimRescue_offspring_0M$value
W = 123, p-value = 6.525e-07
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DsimCI_offspring_0M$value, DsimRescue_offspring_0M$value) :
  cannot compute exact p-value with ties


> wilcox.test(DsimCI_offspring_5M$value, DsimRescue_offspring_5M$value)

	Wilcoxon rank sum test with continuity correction

data:  DsimCI_offspring_5M$value and DsimRescue_offspring_5M$value
W = 117.5, p-value = 0.05085
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DsimCI_offspring_5M$value, DsimRescue_offspring_5M$value) :
  cannot compute exact p-value with ties
