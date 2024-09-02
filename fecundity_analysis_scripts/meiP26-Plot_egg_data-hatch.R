
##################
## females

##################
#### Parse data
##################
#### deeppink2 == rgb(0.93,0.07,0.54,0.7)
#### lightpink1 == rgb(0.933,0.635,0.678,0.7)
# Egg hatch, retaining %hatch counts ($V16) with >= 20 total eggs laid ($V12)
if(length(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)])) > 0) {meiP26RNAi_F_wMel_hatch_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP26RNAi_F_wMel$V5 [which(meiP26RNAi_F_wMel$V12>=20)])))} else {meiP26RNAi_F_wMel_hatch_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)])) > 0) {meiP261_F_wMel_hatch_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_wMel$V5 [which(meiP261_F_wMel$V12>=20)])), batch=(meiP261_F_wMel$V1 [which(meiP261_F_wMel$V12>=20)]))} else {meiP261_F_wMel_hatch_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])), batch="0")}

if(length(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)])) > 0) {meiP26mfs1_F_wMel_hatch_full <- data.frame(group="meiP26mfs1_F_wMel", value=as.numeric(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP26mfs1_F_wMel$V5 [which(meiP26mfs1_F_wMel$V12>=20)])))} else {meiP26mfs1_F_wMel_hatch_full <- data.frame(group="meiP26mfs1_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_wMel$V16 [which(meiP26mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)])) > 0) {meiP261_mfs1_F_wMel_hatch_full <- data.frame(group="meiP261_mfs1_F_wMel", value=as.numeric(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_mfs1_F_wMel$V5 [which(meiP261_mfs1_F_wMel$V12>=20)])))} else {meiP261_mfs1_F_wMel_hatch_full <- data.frame(group="meiP261_mfs1_F_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_wMel$V16 [which(meiP261_mfs1_F_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}


## select 3-7d old
meiP26RNAi_F_wMel_hatch <- subset(subset(meiP26RNAi_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_F_wMel_hatch <- subset(subset(meiP261_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))
meiP26mfs1_F_wMel_hatch <- subset(subset(meiP26mfs1_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_mfs1_F_wMel_hatch <- subset(subset(meiP261_mfs1_F_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


####
if(length(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)])) > 0) {meiP26RNAi_F_uninf_hatch_full <- data.frame(group="meiP26RNAi_F_uninf", age=as.numeric(na.omit(meiP26RNAi_F_uninf$V5 [which(meiP26RNAi_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)]))))} else {meiP26RNAi_F_uninf_hatch_full <- data.frame(group="meiP26RNAi_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)])) > 0) {meiP261_F_uninf_hatch_full <- data.frame(group="meiP261_F_uninf", age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)]))), batch=(meiP261_F_uninf$V1 [which(meiP261_F_uninf$V12>=20)]))} else {meiP261_F_uninf_hatch_full <- data.frame(group="meiP261_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])), batch="0")}

if(length(na.omit(meiP261_F_uninfxwMel$V16 [which(meiP261_F_uninfxwMel$V12>=20)])) > 0) {meiP261_F_uninfxwMel_hatch_full <- data.frame(group="meiP261_F_uninfxwMel", age=as.numeric(na.omit(meiP261_F_uninfxwMel$V5 [which(meiP261_F_uninfxwMel$V12>=20)])), value=as.numeric(na.omit(meiP261_F_uninfxwMel$V16 [which(meiP261_F_uninfxwMel$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninfxwMel$V16 [which(meiP261_F_uninfxwMel$V12>=20)]))))} else {meiP261_F_uninfxwMel_hatch_full <- data.frame(group="meiP261_F_uninfxwMel", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_F_uninfxwMel$V16 [which(meiP261_F_uninfxwMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninfxwMel$V5 [which(meiP261_F_uninfxwMel$V12>=20)])))}

if(length(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)])) > 0) {meiP26mfs1_F_uninf_hatch_full <- data.frame(group="meiP26mfs1_F_uninf", age=as.numeric(na.omit(meiP26mfs1_F_uninf$V5 [which(meiP26mfs1_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)]))))} else {meiP26mfs1_F_uninf_hatch_full <- data.frame(group="meiP26mfs1_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_F_uninf$V16 [which(meiP26mfs1_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}

if(length(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)])) > 0) {meiP261_mfs1_F_uninf_hatch_full <- data.frame(group="meiP261_mfs1_F_uninf", age=as.numeric(na.omit(meiP261_mfs1_F_uninf$V5 [which(meiP261_mfs1_F_uninf$V12>=20)])), value=as.numeric(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)]))))} else {meiP261_mfs1_F_uninf_hatch_full <- data.frame(group="meiP261_mfs1_F_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_mfs1_F_uninf$V16 [which(meiP261_mfs1_F_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=20)])))}


## select 3-7d old
meiP26RNAi_F_uninf_hatch <- subset(subset(meiP26RNAi_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_F_uninf_hatch <- subset(subset(meiP261_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))
meiP261_F_uninfxwMel_hatch <- subset(subset(meiP261_F_uninfxwMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP26mfs1_F_uninf_hatch <- subset(subset(meiP26mfs1_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_mfs1_F_uninf_hatch <- subset(subset(meiP261_mfs1_F_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


##########################################
## bind together data frames
F_egg_hatch <- rbind(meiP26RNAi_F_wMel_hatch, meiP26RNAi_F_uninf_hatch, meiP261_F_wMel_hatch, meiP261_F_uninf_hatch, meiP26mfs1_F_wMel_hatch, meiP26mfs1_F_uninf_hatch, meiP261_mfs1_F_wMel_hatch, meiP261_mfs1_F_uninf_hatch)
#F_egg_hatch <- rbind(meiP26RNAi_F_wMel_hatch, meiP26RNAi_F_uninf_hatch, meiP261_F_wMel_hatch, meiP261_F_uninf_hatch, meiP261_F_uninfxwMel_hatch, meiP26mfs1_F_wMel_hatch, meiP26mfs1_F_uninf_hatch, meiP261_mfs1_F_wMel_hatch, meiP261_mfs1_F_uninf_hatch)
F_hatch_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))
#F_hatch_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_F_uninfxwMel"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))

## reorder by group for beeswarm
F_egg_hatch$group <- factor(F_egg_hatch$group, levels=F_hatch_levels)

pdf("mei-P26_knockdown_F_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_hatch$value ~ F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(F_egg_hatch$value ~ F_egg_hatch$group, pwcol=F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(F_hatch_levels)-1, y=par("usr")[3]-20, labels=F_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()

#######################
#### subset plot for seminar
##########################################
## bind together data frames
subF_egg_hatch <- rbind(meiP26RNAi_F_wMel_hatch, meiP26RNAi_F_uninf_hatch, meiP261_F_wMel_hatch, meiP261_F_uninf_hatch)
subF_hatch_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"))

## reorder by group for beeswarm
subF_egg_hatch$group <- factor(subF_egg_hatch$group, levels=subF_hatch_levels)

pdf("subset-mei-P26_knockdown_F_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(subF_egg_hatch$value ~ subF_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(subF_egg_hatch$value ~ subF_egg_hatch$group, pwcol=subF_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.5:length(subF_hatch_levels)-1, y=par("usr")[3]-20, labels=subF_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()

##########################
##########################
wilcox.test(WT_OreR_wMel_hatch$value, meiP26RNAi_F_uninf_hatch$value)
wilcox.test(WT_OreR_uninf_hatch$value, meiP26RNAi_F_wMel_hatch$value)

wilcox.test(WT_OreR_wMel_hatch$value, meiP26RNAi_F_wMel_hatch$value)
wilcox.test(WT_OreR_uninf_hatch$value, meiP26RNAi_F_uninf_hatch$value)

wilcox.test(WT_OreR_wMel_hatch$value, meiP261_F_wMel_hatch$value)
wilcox.test(WT_OreR_uninf_hatch$value, meiP261_F_uninf_hatch$value)

wilcox.test(WT_OreR_wMel_hatch$value, meiP26mfs1_F_wMel_hatch$value)
wilcox.test(WT_OreR_uninf_hatch$value, meiP26mfs1_F_uninf_hatch$value)

wilcox.test(WT_OreR_wMel_hatch$value, meiP261_mfs1_F_wMel_hatch$value)
wilcox.test(WT_OreR_uninf_hatch$value, meiP261_mfs1_F_uninf_hatch$value)


> wilcox.test(WT_OreR_wMel_hatch$value, meiP26RNAi_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP26RNAi_F_uninf_hatch$value
W = 2403, p-value = 3.565e-14
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_hatch$value, meiP26RNAi_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and meiP26RNAi_F_wMel_hatch$value
W = 3419.5, p-value = 0.01384
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_hatch$value, meiP26RNAi_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP26RNAi_F_wMel_hatch$value
W = 3040, p-value = 9.106e-07
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_hatch$value, meiP26RNAi_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and meiP26RNAi_F_uninf_hatch$value
W = 3275, p-value = 4.318e-15
alternative hypothesis: true location shift is not equal to 0

>
> wilcox.test(WT_OreR_wMel_hatch$value, meiP261_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP261_F_wMel_hatch$value
W = 1990.5, p-value = 4.822e-13
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_hatch$value, meiP261_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and meiP261_F_uninf_hatch$value
W = 510.5, p-value = 0.0002929
alternative hypothesis: true location shift is not equal to 0

>
> wilcox.test(WT_OreR_wMel_hatch$value, meiP26mfs1_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP26mfs1_F_wMel_hatch$value
W = 377.5, p-value = 0.0002407
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_hatch$value, meiP26mfs1_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and meiP26mfs1_F_uninf_hatch$value
W = 517.5, p-value = 0.0001967
alternative hypothesis: true location shift is not equal to 0

>
> wilcox.test(WT_OreR_wMel_hatch$value, meiP261_mfs1_F_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP261_mfs1_F_wMel_hatch$value
W = 513, p-value = 5.324e-05
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_hatch$value, meiP261_mfs1_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and meiP261_mfs1_F_uninf_hatch$value
W = 517.5, p-value = 0.0001967
alternative hypothesis: true location shift is not equal to 0

###################################################################################
#####################################################################################
#### Males

if(length(na.omit(meiP26RNAi_M_wMel$V16 [which(meiP26RNAi_M_wMel$V12>=20)])) > 0) {meiP26RNAi_M_wMel_hatch_full <- data.frame(group="meiP26RNAi_M_wMel", value=as.numeric(na.omit(meiP26RNAi_M_wMel$V16 [which(meiP26RNAi_M_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_M_wMel$V16 [which(meiP26RNAi_M_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP26RNAi_M_wMel$V5 [which(meiP26RNAi_M_wMel$V12>=20)])))} else {meiP26RNAi_M_wMel_hatch_full <- data.frame(group="meiP26RNAi_M_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_M_wMel$V16 [which(meiP26RNAi_M_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_M_uninf$V5 [which(meiP261_M_uninf$V12>=20)])))}

if(length(na.omit(meiP261_M_wMel$V16 [which(meiP261_M_wMel$V12>=20)])) > 0) {meiP261_M_wMel_hatch_full <- data.frame(group="meiP261_M_wMel", value=as.numeric(na.omit(meiP261_M_wMel$V16 [which(meiP261_M_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_M_wMel$V16 [which(meiP261_M_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_M_wMel$V5 [which(meiP261_M_wMel$V12>=20)])))} else {meiP261_M_wMel_hatch_full <- data.frame(group="meiP261_M_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP261_M_wMel$V16 [which(meiP261_M_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_M_uninf$V5 [which(meiP261_M_uninf$V12>=20)])))}

if(length(na.omit(meiP26mfs1_M_wMel$V16 [which(meiP26mfs1_M_wMel$V12>=20)])) > 0) {meiP26mfs1_M_wMel_hatch_full <- data.frame(group="meiP26mfs1_M_wMel", value=as.numeric(na.omit(meiP26mfs1_M_wMel$V16 [which(meiP26mfs1_M_wMel$V12>=20)])), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_M_wMel$V16 [which(meiP26mfs1_M_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP26mfs1_M_wMel$V5 [which(meiP26mfs1_M_wMel$V12>=20)])))} else {meiP26mfs1_M_wMel_hatch_full <- data.frame(group="meiP26mfs1_M_wMel", value=as.numeric(0), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_M_wMel$V16 [which(meiP26mfs1_M_wMel$V12>=20)]))), age=as.numeric(na.omit(meiP261_M_uninf$V5 [which(meiP261_M_uninf$V12>=20)])))}


## select 3-7d old
meiP26RNAi_M_wMel_hatch <- subset(subset(meiP26RNAi_M_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_M_wMel_hatch <- subset(subset(meiP261_M_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP26mfs1_M_wMel_hatch <- subset(subset(meiP26mfs1_M_wMel_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


####
if(length(na.omit(meiP26RNAi_M_uninf$V16 [which(meiP26RNAi_M_uninf$V12>=20)])) > 0) {meiP26RNAi_M_uninf_hatch_full <- data.frame(group="meiP26RNAi_M_uninf", age=as.numeric(na.omit(meiP26RNAi_M_uninf$V5 [which(meiP26RNAi_M_uninf$V12>=20)])), value=as.numeric(na.omit(meiP26RNAi_M_uninf$V16 [which(meiP26RNAi_M_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_M_uninf$V16 [which(meiP26RNAi_M_uninf$V12>=20)]))))} else {meiP26RNAi_M_uninf_hatch_full <- data.frame(group="meiP26RNAi_M_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26RNAi_M_uninf$V16 [which(meiP26RNAi_M_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_M_uninf$V5 [which(meiP261_M_uninf$V12>=20)])))}

if(length(na.omit(meiP261_M_uninf$V16 [which(meiP261_M_uninf$V12>=20)])) > 0) {meiP261_M_uninf_hatch_full <- data.frame(group="meiP261_M_uninf", age=as.numeric(na.omit(meiP261_M_uninf$V5 [which(meiP261_M_uninf$V12>=20)])), value=as.numeric(na.omit(meiP261_M_uninf$V16 [which(meiP261_M_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_M_uninf$V16 [which(meiP261_M_uninf$V12>=20)]))))} else {meiP261_M_uninf_hatch_full <- data.frame(group="meiP261_M_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP261_M_uninf$V16 [which(meiP261_M_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_M_uninf$V5 [which(meiP261_M_uninf$V12>=20)])))}

if(length(na.omit(meiP26mfs1_M_uninf$V16 [which(meiP26mfs1_M_uninf$V12>=20)])) > 0) {meiP26mfs1_M_uninf_hatch_full <- data.frame(group="meiP26mfs1_M_uninf", age=as.numeric(na.omit(meiP26mfs1_M_uninf$V5 [which(meiP26mfs1_M_uninf$V12>=20)])), value=as.numeric(na.omit(meiP26mfs1_M_uninf$V16 [which(meiP26mfs1_M_uninf$V12>=20)])), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_M_uninf$V16 [which(meiP26mfs1_M_uninf$V12>=20)]))))} else {meiP26mfs1_M_uninf_hatch_full <- data.frame(group="meiP26mfs1_M_uninf", value=as.numeric(0), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(na.omit(meiP26mfs1_M_uninf$V16 [which(meiP26mfs1_M_uninf$V12>=20)]))), age=as.numeric(na.omit(meiP261_M_uninf$V5 [which(meiP261_M_uninf$V12>=20)])))}


## select 3-7d old
meiP26RNAi_M_uninf_hatch <- subset(subset(meiP26RNAi_M_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP261_M_uninf_hatch <- subset(subset(meiP261_M_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
meiP26mfs1_M_uninf_hatch <- subset(subset(meiP26mfs1_M_uninf_hatch_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))


##########################################
## bind together data frames
M_egg_hatch <- rbind(meiP26RNAi_M_wMel_hatch, meiP26RNAi_M_uninf_hatch, meiP261_M_wMel_hatch, meiP261_M_uninf_hatch, meiP26mfs1_M_wMel_hatch, meiP26mfs1_M_uninf_hatch)
M_hatch_levels <- c(paste("meiP26RNAi_M_wMel"), paste("meiP26RNAi_M_uninf"), paste("meiP261_M_wMel"), paste("meiP261_M_uninf"), paste("meiP26mfs1_M_wMel"), paste("meiP26mfs1_M_uninf"))

## reorder by group for beeswarm
M_egg_hatch$group <- factor(M_egg_hatch$group, levels=M_hatch_levels)

pdf("mei-P26_knockdown_M_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(M_egg_hatch$value ~ M_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(M_egg_hatch$value ~ M_egg_hatch$group, pwcol=M_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(M_hatch_levels), y=par("usr")[3]-20, labels=M_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()


################################################################################
###############################################################################
wilcox.test(meiP26RNAi_F_wMel_hatch$value, meiP26RNAi_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_F_wMel_hatch$value and meiP26RNAi_F_uninf_hatch$value
W = 1501.5, p-value = 2.638e-08
alternative hypothesis: true location shift is not equal to 0


wilcox.test(meiP261_F_wMel_hatch$value, meiP261_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_F_wMel_hatch$value and meiP261_F_uninf_hatch$value
W = 96.5, p-value = 0.1391
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_F_wMel_hatch$value, meiP261_F_uninf_hatch$value) :
  cannot compute exact p-value with ties

###*** too few samples? Yes --> contingency table
> length(meiP261_F_uninf_hatch$value)
[1] 5

######
wilcox.test(meiP261_F_wMel_hatch$value, meiP261_F_uninfxwMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_F_wMel_hatch$value and meiP261_F_uninfxwMel_hatch$value
W = 111, p-value = 0.02561
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_F_wMel_hatch$value, meiP261_F_uninfxwMel_hatch$value) :
  cannot compute exact p-value with ties

#############
wilcox.test(meiP261_F_uninfxwMel_hatch$value, meiP261_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_F_uninfxwMel_hatch$value and meiP261_F_uninf_hatch$value
W = 11.5, p-value = 0.9166
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_F_uninfxwMel_hatch$value, meiP261_F_uninf_hatch$value) :
  cannot compute exact p-value with ties


#################
wilcox.test(meiP26mfs1_F_wMel_hatch$value, meiP26mfs1_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_F_wMel_hatch$value and meiP26mfs1_F_uninf_hatch$value
W = 12.5, p-value = NA
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26mfs1_F_wMel_hatch$value, meiP26mfs1_F_uninf_hatch$value) :
  cannot compute exact p-value with ties



wilcox.test(meiP261_mfs1_F_wMel_hatch$value, meiP261_mfs1_F_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_mfs1_F_wMel_hatch$value and meiP261_mfs1_F_uninf_hatch$value
W = 35, p-value = 0.0042
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_mfs1_F_wMel_hatch$value, meiP261_mfs1_F_uninf_hatch$value) :
  cannot compute exact p-value with ties

###############################################################################
###############################################################################
###############################################################################
### Males
###########
wilcox.test(WT_OreR_wMel_hatch$value, meiP26RNAi_M_wMel_hatch$value)
wilcox.test(meiP26RNAi_M_uninf_hatch$value, WT_OreR_uninf_hatch$value)

> wilcox.test(WT_OreR_wMel_hatch$value, meiP26RNAi_M_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP26RNAi_M_wMel_hatch$value
W = 736.5, p-value = 0.01649
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP26RNAi_M_uninf_hatch$value, WT_OreR_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_M_uninf_hatch$value and WT_OreR_uninf_hatch$value
W = 1330, p-value = 0.9004
alternative hypothesis: true location shift is not equal to 0


###
wilcox.test(WT_OreR_wMel_hatch$value, meiP261_M_wMel_hatch$value)
wilcox.test(meiP261_M_uninf_hatch$value, WT_OreR_uninf_hatch$value)

> wilcox.test(WT_OreR_wMel_hatch$value, meiP261_M_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP261_M_wMel_hatch$value
W = 399, p-value = 0.0004723
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP261_M_uninf_hatch$value, WT_OreR_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_M_uninf_hatch$value and WT_OreR_uninf_hatch$value
W = 1196, p-value = 0.005002
alternative hypothesis: true location shift is not equal to 0


###
wilcox.test(WT_OreR_wMel_hatch$value, meiP26mfs1_M_wMel_hatch$value)
wilcox.test(meiP26mfs1_M_uninf_hatch$value, WT_OreR_uninf_hatch$value)

> wilcox.test(WT_OreR_wMel_hatch$value, meiP26mfs1_M_wMel_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and meiP26mfs1_M_wMel_hatch$value
W = 491, p-value = 0.4006
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP26mfs1_M_uninf_hatch$value, WT_OreR_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_M_uninf_hatch$value and WT_OreR_uninf_hatch$value
W = 1, p-value = 0.01729
alternative hypothesis: true location shift is not equal to 0


###
wilcox.test(meiP26RNAi_M_wMel_hatch$value, meiP26RNAi_M_uninf_hatch$value)
wilcox.test(meiP261_M_wMel_hatch$value, meiP261_M_uninf_hatch$value)
wilcox.test(meiP26mfs1_M_wMel_hatch$value, meiP26mfs1_M_uninf_hatch$value)


> wilcox.test(meiP26RNAi_M_wMel_hatch$value, meiP26RNAi_M_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_M_wMel_hatch$value and meiP26RNAi_M_uninf_hatch$value
W = 533.5, p-value = 0.003421
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26RNAi_M_wMel_hatch$value, meiP26RNAi_M_uninf_hatch$value) :
  cannot compute exact p-value with ties
> wilcox.test(meiP261_M_wMel_hatch$value, meiP261_M_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_M_wMel_hatch$value and meiP261_M_uninf_hatch$value
W = 221, p-value = 0.1029
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_M_wMel_hatch$value, meiP261_M_uninf_hatch$value) :
  cannot compute exact p-value with ties

> wilcox.test(meiP26mfs1_M_wMel_hatch$value, meiP26mfs1_M_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_M_wMel_hatch$value and meiP26mfs1_M_uninf_hatch$value
W = 26, p-value = 0.1073
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26mfs1_M_wMel_hatch$value, meiP26mfs1_M_uninf_hatch$value) :
  cannot compute exact p-value with ties

########
#########
########

length(meiP26RNAi_F_wMel_hatch$value)
mean(meiP26RNAi_F_wMel_hatch$value)
> length(meiP26RNAi_F_wMel_hatch$value)
[1] 53
> mean(meiP26RNAi_F_wMel_hatch$value)
[1] 74.4466

length(meiP26RNAi_F_uninf_hatch$value)
mean(meiP26RNAi_F_uninf_hatch$value)
> length(meiP26RNAi_F_uninf_hatch$value)
[1] 33
> mean(meiP26RNAi_F_uninf_hatch$value)
[1] 49.63333

length(meiP261_F_wMel_hatch$value)
mean(meiP261_F_wMel_hatch$value)
> length(meiP261_F_wMel_hatch$value)
[1] 27
> mean(meiP261_F_wMel_hatch$value)
[1] 24.90815

length(meiP261_F_uninf_hatch$value)
mean(meiP261_F_uninf_hatch$value)
###*** too few samples? Yes --> contingency table
> length(meiP261_F_uninf_hatch$value)
[1] 5
> mean(meiP261_F_uninf_hatch$value)
[1] 18.474

length(meiP261_mfs1_F_wMel_hatch$value)
mean(meiP261_mfs1_F_wMel_hatch$value)
> length(meiP261_mfs1_F_wMel_hatch$value)
[1] 7
> mean(meiP261_mfs1_F_wMel_hatch$value)
[1] 27.73857

length(meiP261_mfs1_F_uninf_hatch$value)
mean(meiP261_mfs1_F_uninf_hatch$value)
> length(meiP261_mfs1_F_uninf_hatch$value)
[1] 5
> mean(meiP261_mfs1_F_uninf_hatch$value)
[1] 0

length(meiP26mfs1_F_wMel_hatch$value)
mean(meiP26mfs1_F_wMel_hatch$value)
> length(meiP26mfs1_F_wMel_hatch$value)
[1] 5
> mean(meiP26mfs1_F_wMel_hatch$value)
[1] 0

length(meiP26mfs1_F_uninf_hatch$value)
mean(meiP26mfs1_F_uninf_hatch$value)
> length(meiP26mfs1_F_uninf_hatch$value)
[1] 5
> mean(meiP26mfs1_F_uninf_hatch$value)
[1] 0

#########
###############################################################################
########
length(meiP26RNAi_M_wMel_hatch$value)
mean(meiP26RNAi_M_wMel_hatch$value)
> length(meiP26RNAi_M_wMel_hatch$value)
[1] 28
> mean(meiP26RNAi_M_wMel_hatch$value)
[1] 90.57571

length(meiP26RNAi_M_uninf_hatch$value)
mean(meiP26RNAi_M_uninf_hatch$value)
> length(meiP26RNAi_M_uninf_hatch$value)
[1] 26
> mean(meiP26RNAi_M_uninf_hatch$value)
[1] 72.60731

length(meiP261_M_wMel_hatch$value)
mean(meiP261_M_wMel_hatch$value)
> length(meiP261_M_wMel_hatch$value)
[1] 21
> mean(meiP261_M_wMel_hatch$value)
[1] 94.85667

length(meiP261_M_uninf_hatch$value)
mean(meiP261_M_uninf_hatch$value)
> length(meiP261_M_uninf_hatch$value)
[1] 16
> mean(meiP261_M_uninf_hatch$value)
[1] 90.63875

length(meiP26mfs1_M_wMel_hatch$value)
mean(meiP26mfs1_M_wMel_hatch$value)
> length(meiP26mfs1_M_wMel_hatch$value)
[1] 15
> mean(meiP26mfs1_M_wMel_hatch$value)
[1] 71.00467

length(meiP26mfs1_M_uninf_hatch$value)
mean(meiP26mfs1_M_uninf_hatch$value)
> length(meiP26mfs1_M_uninf_hatch$value)
[1] 2
> mean(meiP26mfs1_M_uninf_hatch$value)
[1] 0
