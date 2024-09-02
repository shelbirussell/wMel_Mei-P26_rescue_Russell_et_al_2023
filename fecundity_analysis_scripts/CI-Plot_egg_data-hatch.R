
# Egg hatch, retaining %hatch counts ($V16) with >= 20 total eggs laid ($V12)
################################################################################
##Drosophila melanogaster + wMel
#################################
#### CI

if(length(DmelCI$V16 [which(DmelCI$V12>=20)]) > 0) {DmelCI_hatch_full <- data.frame(group="DmelCI", ageF=as.numeric(DmelCI$V5 [which(DmelCI$V12>=20)]), ageM=as.numeric(DmelCI$V9 [which(DmelCI$V12>=20)]), value=as.numeric(DmelCI$V16 [which(DmelCI$V12>=20)]), color=rgb(1,0.19,0.19,0.7), samples=length(as.numeric(DmelCI$V16 [which(DmelCI$V12>=20)])))} else {DmelCI_hatch_full <- data.frame(group="DmelCI", value=as.numeric(0), color=rgb(1,0.19,0.19,0.7), samples=length(as.numeric(DmelCI$V16 [which(DmelCI$V12>=20)])), ageF=as.numeric(DmelCI$V5 [which(DmelCI$V12>=20)]), ageM=as.numeric(DmelCI$V9 [which(DmelCI$V12>=20)]))}
## select 3-7d old females, 0 day old males (three data subsets)
DmelCI_hatch <- subset(subset(subset(DmelCI_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))

DmelCI_hatch_old <- subset(subset(subset(DmelCI_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >1, select=c(group, value, color, samples, ageF, ageM))

###########
##### rescue
if(length(DmelRescue$V16 [which(DmelRescue$V12>=20)]) > 0) {DmelRescue_hatch_full <- data.frame(group="DmelRescue", ageF=as.numeric(DmelRescue$V5 [which(DmelRescue$V12>=20)]), ageM=as.numeric(DmelRescue$V9 [which(DmelRescue$V12>=20)]), value=as.numeric(DmelRescue$V16 [which(DmelRescue$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DmelRescue$V16 [which(DmelRescue$V12>=20)])))} else {DmelRescue_hatch_full <- data.frame(group="DmelRescue", value=as.numeric(0), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DmelRescue$V16 [which(DmelRescue$V12>=20)])), ageF=as.numeric(DmelRescue$V5 [which(DmelRescue$V12>=20)]), ageM=as.numeric(DmelRescue$V9 [which(DmelRescue$V12>=20)]))}
## select 3-7d old females, 0 day old males (three data subsets)
DmelRescue_hatch <- subset(subset(subset(DmelRescue_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))

## doesn't exist in this dataset (==WT OreR wMelDB)
##DmelRescue_hatch_old <- subset(subset(subset(DmelRescue_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >1, select=c(group, value, color, samples, ageF, ageM))
####

### WT data for old rescue dataset
if(length(DmelRescueOldMales$V16 [which(DmelRescueOldMales$V12>=20)]) > 0) {DmelRescueOldMales_hatch_full <- data.frame(group="DmelRescueOldMales", ageF=as.numeric(DmelRescueOldMales$V5 [which(DmelRescueOldMales$V12>=20)]), ageM=as.numeric(DmelRescueOldMales$V9 [which(DmelRescueOldMales$V12>=20)]), value=as.numeric(DmelRescueOldMales$V16 [which(DmelRescueOldMales$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DmelRescueOldMales$V16 [which(DmelRescueOldMales$V12>=20)])))} else {DmelRescueOldMales_hatch_full <- data.frame(group="DmelRescueOldMales", value=as.numeric(0), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DmelRescueOldMales$V16 [which(DmelRescueOldMales$V12>=20)])), ageF=as.numeric(DmelRescueOldMales$V5 [which(DmelRescueOldMales$V12>=20)]), ageM=as.numeric(DmelRescueOldMales$V9 [which(DmelRescueOldMales$V12>=20)]))}
## select 3-7d old females, 0 day old males (three data subsets)
DmelRescueOldMales_hatch <- subset(subset(subset(DmelRescueOldMales_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >2, select=c(group, value, color, samples, ageF, ageM))

#### reciprocal
###########
if(length(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)]) > 0) {WT_OreR_wMel_recip_hatch_full <- data.frame(group="WT_OreR_wMel_recip", ageF=as.numeric(WT_OreR_wMel_recip$V5 [which(WT_OreR_wMel_recip$V12>=20)]), ageM=as.numeric(WT_OreR_wMel_recip$V9 [which(WT_OreR_wMel_recip$V12>=20)]), value=as.numeric(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)])))} else {WT_OreR_wMel_recip_hatch_full <- data.frame(group="WT_OreR_wMel_recip", value=as.numeric(0), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)])), ageF=as.numeric(WT_OreR_wMel_recip$V5 [which(WT_OreR_wMel_recip$V12>=20)]), ageM=as.numeric(WT_OreR_wMel_recip$V9 [which(WT_OreR_wMel_recip$V12>=20)]))}
## select 3-7d old females, 0 day old males (three data subsets)
WT_OreR_wMel_recip_hatch_0d <- subset(subset(subset(WT_OreR_wMel_recip_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))
WT_OreR_wMel_recip_hatch_5d <- subset(subset(subset(WT_OreR_wMel_recip_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >=1, select=c(group, value, color, samples, ageF, ageM))


###
####################################
### Drosophila simulans + wRi
###########
if(length(DsimCI$V16 [which(DsimCI$V12>=20)]) > 0) {DsimCI_hatch_full <- data.frame(group="DsimCI", ageF=as.numeric(DsimCI$V5 [which(DsimCI$V12>=20)]), ageM=as.numeric(DsimCI$V9 [which(DsimCI$V12>=20)]), value=as.numeric(DsimCI$V16 [which(DsimCI$V12>=20)]), color=rgb(0.8,0.15,0.15,0.7), samples=length(as.numeric(DsimCI$V16 [which(DsimCI$V12>=20)])))} else {DsimCI_hatch_full <- data.frame(group="DsimCI", value=as.numeric(0), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DsimCI$V16 [which(DsimCI$V12>=20)])), ageF=as.numeric(DsimCI$V5 [which(DsimCI$V12>=20)]), ageM=as.numeric(DsimCI$V9 [which(DsimCI$V12>=20)]))}
## select 3-7d old females, 0 day old males (three data subsets)
DsimCI_hatch <- subset(subset(subset(DsimCI_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))

DsimCI_hatch_old <- subset(subset(subset(DsimCI_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >1, select=c(group, value, color, samples, ageF, ageM))

###########
if(length(DsimRescue$V16 [which(DsimRescue$V12>=20)]) > 0) {DsimRescue_hatch_full <- data.frame(group="DsimRescue", ageF=as.numeric(DsimRescue$V5 [which(DsimRescue$V12>=20)]), ageM=as.numeric(DsimRescue$V9 [which(DsimRescue$V12>=20)]), value=as.numeric(DsimRescue$V16 [which(DsimRescue$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DsimRescue$V16 [which(DsimRescue$V12>=20)])))} else {DsimRescue_hatch_full <- data.frame(group="DsimRescue", value=as.numeric(0), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(DsimRescue$V16 [which(DsimRescue$V12>=20)])), ageF=as.numeric(DsimRescue$V5 [which(DsimRescue$V12>=20)]), ageM=as.numeric(DsimRescue$V9 [which(DsimRescue$V12>=20)]))}
## select 3-7d old females, 0 day old males (three data subsets)
DsimRescue_hatch <- subset(subset(subset(DsimRescue_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM <1, select=c(group, value, color, samples, ageF, ageM))

DsimRescue_hatch_old <- subset(subset(subset(DsimRescue_hatch_full, ageF <=7, select=c(group, value, color, samples, ageF, ageM)), ageF >2, select=c(group, value, color, samples, ageF, ageM)), ageM >1, select=c(group, value, color, samples, ageF, ageM))

######
#################################################################################
## bind together data frames
Dmel_F_egg_hatch <- rbind(DmelCI_hatch, DmelRescue_hatch, WT_OreR_wMel_recip_hatch_0d)
Dmel_F_egg_hatch_old <- rbind(DmelCI_hatch_old, DmelRescueOldMales_hatch, WT_OreR_wMel_recip_hatch_5d)
Dmel_F_egg_hatch_old_subset <- rbind(DmelCI_hatch_old, DmelRescueOldMales_hatch)

Dsim_F_egg_hatch <- rbind(DsimCI_hatch, DsimRescue_hatch)
Dsim_F_egg_hatch_old <- rbind(DsimCI_hatch_old, DsimRescue_hatch_old)


## this produces a data frame with samples in the intended order
Dmel_F_hatch_levels <- c(paste("DmelCI"), paste("DmelRescue"), paste("WT_OreR_wMel_recip"))
Dmel_F_hatch_levels_old <- c(paste("DmelCI"), paste("DmelRescueOldMales"), paste("WT_OreR_wMel_recip"))
Dmel_F_hatch_levels_old_subset <- c(paste("DmelCI"), paste("DmelRescueOldMales"))

Dsim_F_hatch_levels <- c(paste("DsimCI"), paste("DsimRescue"))


## reorder by group for beeswarm
Dmel_F_egg_hatch$group <- factor(Dmel_F_egg_hatch$group, levels=Dmel_F_hatch_levels)
Dmel_F_egg_hatch_old$group <- factor(Dmel_F_egg_hatch_old$group, levels=Dmel_F_hatch_levels_old)
Dmel_F_egg_hatch_old_subset$group <- factor(Dmel_F_egg_hatch_old_subset$group, levels=Dmel_F_hatch_levels_old_subset)

Dsim_F_egg_hatch$group <- factor(Dsim_F_egg_hatch$group, levels=Dsim_F_hatch_levels)
Dsim_F_egg_hatch_old$group <- factor(Dsim_F_egg_hatch_old$group, levels=Dsim_F_hatch_levels)


######################################
pdf("Dmel_CI_egg_hatch_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dmel_F_egg_hatch$value ~ Dmel_F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(Dmel_F_egg_hatch$value ~ Dmel_F_egg_hatch$group, pwcol=Dmel_F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.8:length(Dmel_F_hatch_levels)-0.2, y=par("usr")[3]-20, labels=Dmel_F_hatch_levels, xpd=NA, srt=45, cex=1.2)
dev.off()

######################################
pdf("Dmel_CI_egg_hatch_old_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dmel_F_egg_hatch_old$value ~ Dmel_F_egg_hatch_old$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(Dmel_F_egg_hatch_old$value ~ Dmel_F_egg_hatch_old$group, pwcol=Dmel_F_egg_hatch_old$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.8:length(Dmel_F_hatch_levels_old)-0.2, y=par("usr")[3]-8, labels=Dmel_F_hatch_levels_old, xpd=NA, srt=45, cex=1.2)
dev.off()

######################################
pdf("Dmel_CI_egg_hatch_old_beeswarm_boxplot-subset.pdf")
par(mar=c(9,12,4,5))
boxplot(Dmel_F_egg_hatch_old_subset$value ~ Dmel_F_egg_hatch_old_subset$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(Dmel_F_egg_hatch_old_subset$value ~ Dmel_F_egg_hatch_old_subset$group, pwcol=Dmel_F_egg_hatch_old_subset$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.8:length(Dmel_F_hatch_levels_old_subset)-0.2, y=par("usr")[3]-8, labels=Dmel_F_hatch_levels_old_subset, xpd=NA, srt=45, cex=1.2)
dev.off()

######################################
pdf("Dsim_CI_egg_hatch_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dsim_F_egg_hatch$value ~ Dsim_F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
#vioplot(Dsim_F_egg_hatch$value ~ Dsim_F_egg_hatch$group, outline=FALSE, col="white", names=FALSE)
beeswarm(Dsim_F_egg_hatch$value ~ Dsim_F_egg_hatch$group, pwcol=Dsim_F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.8:length(Dsim_F_hatch_levels)-0.2, y=par("usr")[3]-20, labels=Dsim_F_hatch_levels, xpd=NA, srt=45, cex=1.2)
dev.off()

######################################
pdf("Dsim_CI_egg_hatch_old_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(Dsim_F_egg_hatch_old$value ~ Dsim_F_egg_hatch_old$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(Dsim_F_egg_hatch_old$value ~ Dsim_F_egg_hatch_old$group, pwcol=Dsim_F_egg_hatch_old$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.8:length(Dsim_F_hatch_levels)-0.2, y=par("usr")[3]-20, labels=Dsim_F_hatch_levels, xpd=NA, srt=45, cex=1.2)
dev.off()

#######################################
######################################################################################
wilcox.test(DmelCI_hatch$value, DmelRescue_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_hatch$value and DmelRescue_hatch$value
W = 271, p-value = 0.0004627
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DmelCI_hatch$value, DmelRescue_hatch$value) :
  cannot compute exact p-value with ties


############
wilcox.test(DmelCI_hatch_old$value, DmelRescueOldMales_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_hatch_old$value and DmelRescueOldMales_hatch$value
W = 442, p-value = 0.9151
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DmelCI_hatch_old$value, DmelRescueOldMales_hatch$value) :
  cannot compute exact p-value with ties


####
wilcox.test(WT_OreR_wMel_recip_hatch_0d$value, DmelRescue_hatch$value)
wilcox.test(DmelCI_hatch$value, WT_OreR_wMel_recip_hatch_0d$value)
wilcox.test(WT_OreR_wMel_recip_hatch_5d$value, DmelRescueOldMales_hatch$value)
wilcox.test(DmelCI_hatch_old$value, WT_OreR_wMel_recip_hatch_5d$value)

> wilcox.test(WT_OreR_wMel_recip_hatch_0d$value, DmelRescue_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_recip_hatch_0d$value and DmelRescue_hatch$value
W = 199, p-value = 0.1253
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(WT_OreR_wMel_recip_hatch_0d$value, DmelRescue_hatch$value) :
  cannot compute exact p-value with ties


> wilcox.test(DmelCI_hatch$value, WT_OreR_wMel_recip_hatch_0d$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_hatch$value and WT_OreR_wMel_recip_hatch_0d$value
W = 15, p-value = 4.561e-05
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DmelCI_hatch$value, WT_OreR_wMel_recip_hatch_0d$value) :
  cannot compute exact p-value with ties

################

> wilcox.test(WT_OreR_wMel_recip_hatch_5d$value, DmelRescueOldMales_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_recip_hatch_5d$value and DmelRescueOldMales_hatch$value
W = 148.5, p-value = 0.09716
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(WT_OreR_wMel_recip_hatch_5d$value, DmelRescueOldMales_hatch$value) :
  cannot compute exact p-value with ties


> wilcox.test(DmelCI_hatch_old$value, WT_OreR_wMel_recip_hatch_5d$value)

	Wilcoxon rank sum test with continuity correction

data:  DmelCI_hatch_old$value and WT_OreR_wMel_recip_hatch_5d$value
W = 129, p-value = 0.2093
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DmelCI_hatch_old$value, WT_OreR_wMel_recip_hatch_5d$value) :
  cannot compute exact p-value with ties


################

wilcox.test(DsimCI_hatch$value, DsimRescue_hatch$value

	Wilcoxon rank sum test with continuity correction

data:  DsimCI_hatch$value and DsimRescue_hatch$value
W = 42, p-value = 5.641e-08
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DsimCI_hatch$value, DsimRescue_hatch$value) :
  cannot compute exact p-value with ties

######
wilcox.test(DsimCI_hatch_old$value, DsimRescue_hatch_old$value)

	Wilcoxon rank sum test with continuity correction

data:  DsimCI_hatch_old$value and DsimRescue_hatch_old$value
W = 13.5, p-value = 0.0003633
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(DsimCI_hatch_old$value, DsimRescue_hatch_old$value) :
  cannot compute exact p-value with ties

######################################
####################################
###################################
##############################################
########################################
length(DmelRescue_hatch$value)
mean(DmelRescue_hatch$value)
> length(DmelRescue_hatch$value)
[1] 33
> mean(DmelRescue_hatch$value)
[1] 84.03182

length(DmelCI_hatch$value)
mean(DmelCI_hatch$value)
> length(DmelCI_hatch$value)
[1] 33
> mean(DmelCI_hatch$value)
[1] 66.10212

length(WT_OreR_wMel_recip_hatch_0d$value)
mean(WT_OreR_wMel_recip_hatch_0d$value)
> length(WT_OreR_wMel_recip_hatch_0d$value)
[1] 9
> mean(WT_OreR_wMel_recip_hatch_0d$value)
[1] 93.21111

length(DmelRescueOldMales_hatch$value)
mean(DmelRescueOldMales_hatch$value)
> length(DmelRescueOldMales_hatch$value)
[1] 45
> mean(DmelRescueOldMales_hatch$value)
[1] 88.66022

length(DmelCI_hatch_old$value)
mean(DmelCI_hatch_old$value)
> length(DmelCI_hatch_old$value)
[1] 20
> mean(DmelCI_hatch_old$value)
[1] 89.2215

length(WT_OreR_wMel_recip_hatch_5d$value)
mean(WT_OreR_wMel_recip_hatch_5d$value)
> length(WT_OreR_wMel_recip_hatch_5d$value)
[1] 10
> mean(WT_OreR_wMel_recip_hatch_5d$value)
[1] 78.174

length(DsimCI_hatch$value)
mean(DsimCI_hatch$value)
> length(DsimCI_hatch$value)
[1] 24
> mean(DsimCI_hatch$value)
[1] 6.070833

length(DsimRescue_hatch$value)
mean(DsimRescue_hatch$value)
> length(DsimRescue_hatch$value)
[1] 28
> mean(DsimRescue_hatch$value)
[1] 68.43179

length(DsimCI_hatch_old$value)
mean(DsimCI_hatch_old$value)
> length(DsimCI_hatch_old$value)
[1] 10
> mean(DsimCI_hatch_old$value)
[1] 26.521

length(DsimRescue_hatch_old$value)
mean(DsimRescue_hatch_old$value)
> length(DsimRescue_hatch_old$value)
[1] 17
> mean(DsimRescue_hatch_old$value)
[1] 69.03529

####
wilcox.test(WT_OreR_wMel_hatch$value, WT_OreR_wMel_recip_hatch_0d$value)

wilcox.test(WT_OreR_wMel_hatch$value, WT_OreR_wMel_recip_hatch_0d$value)

 Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and WT_OreR_wMel_recip_hatch_0d$value
W = 306, p-value = 0.612
alternative hypothesis: true location shift is not equal to 0


wilcox.test(WT_OreR_uninf_hatch$value, WT_OreR_wMel_recip_hatch_0d$value)
> wilcox.test(WT_OreR_uninf_hatch$value, WT_OreR_wMel_recip_hatch_0d$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and WT_OreR_wMel_recip_hatch_0d$value
W = 157, p-value = 0.0009907
alternative hypothesis: true location shift is not equal to 0
