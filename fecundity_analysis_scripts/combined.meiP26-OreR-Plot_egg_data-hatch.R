
##################
## females
###################
#### deeppink2 == rgb(0.93,0.07,0.54,0.7)
#### lightpink1 == rgb(0.933,0.635,0.678,0.7)
## uninf - "grey30" == rgb(0.7,0.7,0.7,0.7)
## wMel - "grey70" == rgb(0.3,0.3,0.3,0.7)
# Egg hatch, retaining %hatch counts ($V16) with >= 20 total eggs laid ($V12)
################################################################################

##################
#### Parse data
##################
# Egg hatch, retaining %hatch counts ($V16) with >= 20 total eggs laid ($V12)

if(length(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)]) > 0) {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=20)]), value=as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)]), lay=as.numeric(WT_OreR_wMel$V13 [which(WT_OreR_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)])))} else {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", value=as.numeric(0), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)])), age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=20)]), batch="0")}

if(length(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)])) > 0) {meiP26RNAi_F_wMel_hatch_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP26RNAi_F_wMel$V5 [which(meiP26RNAi_F_wMel$V12>=20)])))} else {meiP26RNAi_F_wMel_hatch_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)])) > 0) {meiP261_F_wMel_hatch_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_wMel$V5 [which(meiP261_F_wMel$V12>=20)])), batch=(meiP261_F_wMel$V1 [which(meiP261_F_wMel$V12>=20)]))} else {meiP261_F_wMel_hatch_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])), batch="0")}

if(length(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)])) > 0) {meiP26mfs1_F_wMel_hatch_full <- data.frame(group="meiP26mfs1_F_wMel", value=as.numeric(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP26mfs1_F_wMel$V5 [which(meiP26mfs1_F_wMel$V12>=20)])))} else {meiP26mfs1_F_wMel_hatch_full <- data.frame(group="meiP26mfs1_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)])) > 0) {meiP261_mfs1_F_wMel_hatch_full <- data.frame(group="meiP261_mfs1_F_wMel", value=as.numeric(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_mfs1_F_wMel$V5 [which(meiP261_mfs1_F_wMel$V12>=20)])))} else {meiP261_mfs1_F_wMel_hatch_full <- data.frame(group="meiP261_mfs1_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}


## select 3-7d old
WT_OreR_wMel_hatch <- subset(subset(WT_OreR_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP26RNAi_F_wMel_hatch <- subset(subset(meiP26RNAi_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_F_wMel_hatch <- subset(subset(meiP261_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP26mfs1_F_wMel_hatch <- subset(subset(meiP26mfs1_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_mfs1_F_wMel_hatch <- subset(subset(meiP261_mfs1_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


if(length(RFP_wMel$V16 [which(RFP_wMel$V12>=20)]) > 0) {RFP_wMel_hatch_full <- data.frame(group="RFP_wMel", age=as.numeric(RFP_wMel$V5 [which(RFP_wMel$V12>=20)]), value=as.numeric(RFP_wMel$V16 [which(RFP_wMel$V12>=20)]), lay=as.numeric(RFP_wMel$V13 [which(RFP_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(RFP_wMel$V16 [which(RFP_wMel$V12>=20)])))} else {RFP_wMel_hatch_full <- data.frame(group="RFP_wMel", value=as.numeric(0), lay=as.numeric(RFP_wMel$V13 [which(RFP_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(RFP_wMel$V16 [which(RFP_wMel$V12>=20)])), age=as.numeric(RFP_wMel$V5 [which(RFP_wMel$V12>=20)]))}
## select 3-7d old
RFP_wMel_hatch <- subset(subset(RFP_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


####
if(length(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)]) > 0) {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=20)]), value=as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)]), lay=as.numeric(WT_OreR_uninf$V13 [which(WT_OreR_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)])))} else {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", value=as.numeric(0), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)])), age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=20)]), batch="0")}

if(length(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)])) > 0) {meiP26RNAi_F_uninf_hatch_full <- data.frame(group="meiP26RNAi_F_uninf", age=as.numeric(na.omit(meiP26RNAi_F_uninf$V5 [which(meiP26RNAi_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)]))))} else {meiP26RNAi_F_uninf_hatch_full <- data.frame(group="meiP26RNAi_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)])) > 0) {meiP261_F_uninf_hatch_full <- data.frame(group="meiP261_F_uninf", age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)]))), batch=(meiP261_F_uninf$V1 [which(meiP261_F_uninf$V12>=20)]))} else {meiP261_F_uninf_hatch_full <- data.frame(group="meiP261_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])), batch="0")}


if(length(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)])) > 0) {meiP26mfs1_F_uninf_hatch_full <- data.frame(group="meiP26mfs1_F_uninf", age=as.numeric(na.omit(meiP26mfs1_F_uninf$V5 [which(meiP26mfs1_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)]))))} else {meiP26mfs1_F_uninf_hatch_full <- data.frame(group="meiP26mfs1_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)])) > 0) {meiP261_mfs1_F_uninf_hatch_full <- data.frame(group="meiP261_mfs1_F_uninf", age=as.numeric(na.omit(meiP261_mfs1_F_uninf$V5 [which(meiP261_mfs1_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)]))))} else {meiP261_mfs1_F_uninf_hatch_full <- data.frame(group="meiP261_mfs1_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}


## select 3-7d old
WT_OreR_uninf_hatch <- subset(subset(WT_OreR_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP26RNAi_F_uninf_hatch <- subset(subset(meiP26RNAi_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_F_uninf_hatch <- subset(subset(meiP261_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP26mfs1_F_uninf_hatch <- subset(subset(meiP26mfs1_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_mfs1_F_uninf_hatch <- subset(subset(meiP261_mfs1_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))



if(length(RFP_uninf$V16 [which(RFP_uninf$V12>=20)]) > 0) {RFP_uninf_hatch_full <- data.frame(group="RFP_uninf", age=as.numeric(RFP_uninf$V5 [which(RFP_uninf$V12>=20)]), value=as.numeric(RFP_uninf$V16 [which(RFP_uninf$V12>=20)]), lay=as.numeric(RFP_uninf$V13 [which(RFP_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(RFP_uninf$V16 [which(RFP_uninf$V12>=20)])))} else {RFP_uninf_hatch_full <- data.frame(group="RFP_uninf", value=as.numeric(0), lay=as.numeric(RFP_uninf$V13 [which(RFP_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(RFP_uninf$V16 [which(RFP_uninf$V12>=20)])), age=as.numeric(RFP_uninf$V5 [which(RFP_uninf$V12>=20)]))}
## select 3-7d old
RFP_uninf_hatch <- subset(subset(RFP_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


##########################################
## bind together data frames
## this produces a data frame with samples in the intended order
F_egg_hatch <- rbind(WT_OreR_wMel_hatch, WT_OreR_uninf_hatch, meiP26RNAi_F_wMel_hatch, meiP26RNAi_F_uninf_hatch, meiP261_F_wMel_hatch, meiP261_F_uninf_hatch, meiP26mfs1_F_wMel_hatch, meiP26mfs1_F_uninf_hatch, meiP261_mfs1_F_wMel_hatch, meiP261_mfs1_F_uninf_hatch)
F_hatch_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))

## reorder by group for beeswarm
F_egg_hatch$group <- factor(F_egg_hatch$group, levels=F_hatch_levels)

pdf("combined.mei-P26_knockdown_F_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_hatch$value ~ F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(F_egg_hatch$value ~ F_egg_hatch$group, pwcol=F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(F_hatch_levels)-1, y=par("usr")[3]-20, labels=F_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()



###########################################
## bind together data frames
RFP_F_egg_hatch <- rbind(WT_OreR_wMel_hatch, WT_OreR_uninf_hatch, RFP_wMel_hatch, RFP_uninf_hatch, meiP26RNAi_F_wMel_hatch, meiP26RNAi_F_uninf_hatch, meiP261_F_wMel_hatch, meiP261_F_uninf_hatch, meiP26mfs1_F_wMel_hatch, meiP26mfs1_F_uninf_hatch, meiP261_mfs1_F_wMel_hatch, meiP261_mfs1_F_uninf_hatch)
## this produces a data frame with samples in the intended order
RFP_F_hatch_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("RFP_wMel"), paste("RFP_uninf"), paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))

## reorder by group for beeswarm
RFP_F_egg_hatch$group <- factor(RFP_F_egg_hatch$group, levels=RFP_F_hatch_levels)

pdf("combined.mei-P26_knockdown_RFP_F_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(RFP_F_egg_hatch$value ~ RFP_F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(RFP_F_egg_hatch$value ~ RFP_F_egg_hatch$group, pwcol=RFP_F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(RFP_F_hatch_levels)-1, y=par("usr")[3]-20, labels=RFP_F_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()


###########################################
###########################################
###########################################
length(RFP_wMel_hatch$value)
length(RFP_uninf_hatch$value)
mean(RFP_wMel_hatch$value, na.rm=T)
mean(RFP_uninf_hatch$value, na.rm=T)
wilcox.test(RFP_wMel_hatch$value, RFP_uninf_hatch$value)
wilcox.test(RFP_wMel_hatch$value, meiP26RNAi_F_wMel_hatch$value)
wilcox.test(RFP_uninf_hatch$value, meiP26RNAi_F_uninf_hatch$value)
wilcox.test(RFP_wMel_hatch$value, meiP26RNAi_F_uninf_hatch$value)
wilcox.test(RFP_uninf_hatch$value, meiP26RNAi_F_wMel_hatch$value)
wilcox.test(WT_OreR_uninf_hatch$value, meiP26RNAi_F_wMel_hatch$value)

wilcox.test(WT_OreR_wMel_hatch$value, RFP_wMel_hatch$value)
wilcox.test(WT_OreR_uninf_hatch$value, RFP_uninf_hatch$value)

> length(RFP_wMel_hatch$value)
[1] 12
> length(RFP_uninf_hatch$value)
[1] 16
> mean(RFP_wMel_hatch$value, na.rm=T)
[1] 88.485
> mean(RFP_uninf_hatch$value, na.rm=T)
[1] 90.49375

> wilcox.test(RFP_wMel_hatch$value, RFP_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_hatch$value and RFP_uninf_hatch$value
W = 95, p-value = 0.9815
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(RFP_wMel_hatch$value, RFP_uninf_hatch$value) :
  cannot compute exact p-value with ties
> wilcox.test(RFP_wMel_hatch$value, meiP26RNAi_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_hatch$value and meiP26RNAi_F_wMel_hatch$value
W = 463.5, p-value = 0.01421
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(RFP_uninf_hatch$value, meiP26RNAi_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_uninf_hatch$value and meiP26RNAi_F_uninf_hatch$value
W = 528, p-value = 1.93e-08
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(RFP_uninf_hatch$value, meiP26RNAi_F_uninf_hatch$value) :
  cannot compute exact p-value with ties
> wilcox.test(RFP_wMel_hatch$value, meiP26RNAi_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_hatch$value and meiP26RNAi_F_uninf_hatch$value
W = 390.5, p-value = 8.262e-07
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(RFP_wMel_hatch$value, meiP26RNAi_F_uninf_hatch$value) :
  cannot compute exact p-value with ties
> wilcox.test(RFP_uninf_hatch$value, meiP26RNAi_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_uninf_hatch$value and meiP26RNAi_F_wMel_hatch$value
W = 629.5, p-value = 0.003557
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_hatch$value, meiP26RNAi_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and meiP26RNAi_F_wMel_hatch$value
W = 3419.5, p-value = 0.01384
alternative hypothesis: true location shift is not equal to 0




> wilcox.test(WT_OreR_wMel_hatch$value, RFP_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and RFP_wMel_hatch$value
W = 486.5, p-value = 0.7151
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_hatch$value, RFP_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and RFP_uninf_hatch$value
W = 468, p-value = 0.005006
alternative hypothesis: true location shift is not equal to 0
