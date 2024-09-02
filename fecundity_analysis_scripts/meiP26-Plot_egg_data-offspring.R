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
meiP261_F_uninf_offspring_full <- data.frame(group="meiP261_F_uninf", age=as.numeric(meiP261_F_uninf$V5), value=as.numeric(meiP261_F_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP261_F_uninf$V17)), batch=meiP261_F_uninf$V1)
## select 3-7d old
meiP261_F_uninf_offspring <- subset(subset(meiP261_F_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

meiP261_F_uninfxwMel_offspring_full <- data.frame(group="meiP261_F_uninfxwMel", age=as.numeric(meiP261_F_uninfxwMel$V5), value=as.numeric(meiP261_F_uninfxwMel$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP261_F_uninfxwMel$V17)))
## select 3-7d old
meiP261_F_uninfxwMel_offspring <- subset(subset(meiP261_F_uninfxwMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_F_wMel_offspring_full <- data.frame(group="meiP261_F_wMel", age=as.numeric(meiP261_F_wMel$V5), value=as.numeric(meiP261_F_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP261_F_wMel$V17)), batch=meiP261_F_wMel$V1)
## select 3-7d old
meiP261_F_wMel_offspring <- subset(subset(meiP261_F_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age, batch)), age >2, select=c(group, value, color, samples, age, batch))

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

meiP26OE_F_uninf_offspring_full <- data.frame(group="meiP26OE_F_uninf", age=as.numeric(meiP26OE_F_uninf$V5), value=as.numeric(meiP26OE_F_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP26OE_F_uninf$V17)))
## select 3-7d old
meiP26OE_F_uninf_offspring <- subset(subset(meiP26OE_F_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26OE_F_wMel_offspring_full <- data.frame(group="meiP26OE_F_wMel", age=as.numeric(meiP26OE_F_wMel$V5), value=as.numeric(meiP26OE_F_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP26OE_F_wMel$V17)))
## select 3-7d old
meiP26OE_F_wMel_offspring <- subset(subset(meiP26OE_F_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_F_uninf_offspring_full <- data.frame(group="meiP26RNAi_F_uninf", age=as.numeric(meiP26RNAi_F_uninf$V5), value=as.numeric(meiP26RNAi_F_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP26RNAi_F_uninf$V17)))
## select 3-7d old
meiP26RNAi_F_uninf_offspring <- subset(subset(meiP26RNAi_F_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_F_wMel_offspring_full <- data.frame(group="meiP26RNAi_F_wMel", age=as.numeric(meiP26RNAi_F_wMel$V5), value=as.numeric(meiP26RNAi_F_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP26RNAi_F_wMel$V17)))
## select 3-7d old
meiP26RNAi_F_wMel_offspring <- subset(subset(meiP26RNAi_F_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

###########
## bind together data frames
F_offspring <- rbind(meiP26RNAi_F_wMel_offspring, meiP26RNAi_F_uninf_offspring, meiP261_F_wMel_offspring, meiP261_F_uninf_offspring, meiP26mfs1_F_wMel_offspring, meiP26mfs1_F_uninf_offspring, meiP261_mfs1_F_wMel_offspring, meiP261_mfs1_F_uninf_offspring)
#F_offspring <- rbind(meiP26RNAi_F_wMel_offspring, meiP26RNAi_F_uninf_offspring, meiP261_F_wMel_offspring, meiP261_F_uninf_offspring, meiP261_F_uninfxwMel_offspring, meiP26mfs1_F_wMel_offspring, meiP26mfs1_F_uninf_offspring, meiP261_mfs1_F_wMel_offspring, meiP261_mfs1_F_uninf_offspring)

## this produces a data frame with samples in the intended order
F_offspring_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))
#F_offspring_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"), paste("meiP261_F_uninfxwMel"), paste("meiP261_mfs1_F_wMel"), paste("meiP261_mfs1_F_uninf"), paste("meiP26mfs1_F_wMel"), paste("meiP26mfs1_F_uninf"))

## reorder by group for beeswarm
F_offspring$group <- factor(F_offspring$group, levels=F_offspring_levels)

pdf("./plots/mei-P26_knockdown_F_offspring_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_offspring$value ~ F_offspring$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / female / day", names=FALSE)
beeswarm(F_offspring$value ~ F_offspring$group, pwcol=F_offspring$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0:length(F_offspring_levels), y=par("usr")[3]-25, labels=F_offspring_levels, xpd=NA, srt=45, cex=1)
dev.off()

################################
### subset graph for seminar
###########
## bind together data frames
subF_offspring <- rbind(meiP26RNAi_F_wMel_offspring, meiP26RNAi_F_uninf_offspring, meiP261_F_wMel_offspring, meiP261_F_uninf_offspring)
## this produces a data frame with samples in the intended order
subF_offspring_levels <- c(paste("meiP26RNAi_F_wMel"), paste("meiP26RNAi_F_uninf"), paste("meiP261_F_wMel"), paste("meiP261_F_uninf"))

## reorder by group for beeswarm
subF_offspring$group <- factor(subF_offspring$group, levels=subF_offspring_levels)

pdf("./plots/subset-mei-P26_knockdown_F_offspring_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(subF_offspring$value ~ subF_offspring$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / female / day", names=FALSE)
beeswarm(subF_offspring$value ~ subF_offspring$group, pwcol=subF_offspring$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0:length(subF_offspring_levels), y=par("usr")[3]-25, labels=subF_offspring_levels, xpd=NA, srt=45, cex=1)
dev.off()


##########
### males
####
## parse data and subset to 3-7 day old
###
meiP261_M_uninf_offspring_full <- data.frame(group="meiP261_M_uninf", age=as.numeric(meiP261_M_uninf$V5), value=as.numeric(meiP261_M_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP261_M_uninf$V17)))
## select 3-7d old
meiP261_M_uninf_offspring <- subset(subset(meiP261_M_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP261_M_wMel_offspring_full <- data.frame(group="meiP261_M_wMel", age=as.numeric(meiP261_M_wMel$V5), value=as.numeric(meiP261_M_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP261_M_wMel$V17)))
## select 3-7d old
meiP261_M_wMel_offspring <- subset(subset(meiP261_M_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_M_uninf_offspring_full <- data.frame(group="meiP26mfs1_M_uninf", age=as.numeric(meiP26mfs1_M_uninf$V5), value=as.numeric(meiP26mfs1_M_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP26mfs1_M_uninf$V17)))
## select 3-7d old
meiP26mfs1_M_uninf_offspring <- subset(subset(meiP26mfs1_M_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26mfs1_M_wMel_offspring_full <- data.frame(group="meiP26mfs1_M_wMel", age=as.numeric(meiP26mfs1_M_wMel$V5), value=as.numeric(meiP26mfs1_M_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP26mfs1_M_wMel$V17)))
## select 3-7d old
meiP26mfs1_M_wMel_offspring <- subset(subset(meiP26mfs1_M_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26OE_M_uninf_offspring_full <- data.frame(group="meiP26OE_M_uninf", age=as.numeric(meiP26OE_M_uninf$V5), value=as.numeric(meiP26OE_M_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP26OE_M_uninf$V17)))
## select 3-7d old
meiP26OE_M_uninf_offspring <- subset(subset(meiP26OE_M_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26OE_M_wMel_offspring_full <- data.frame(group="meiP26OE_M_wMel", age=as.numeric(meiP26OE_M_wMel$V5), value=as.numeric(meiP26OE_M_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP26OE_M_wMel$V17)))
## select 3-7d old
meiP26OE_M_wMel_offspring <- subset(subset(meiP26OE_M_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_M_uninf_offspring_full <- data.frame(group="meiP26RNAi_M_uninf", age=as.numeric(meiP26RNAi_M_uninf$V5), value=as.numeric(meiP26RNAi_M_uninf$V17), color=rgb(0.933,0.635,0.678,0.7), samples=length(as.numeric(meiP26RNAi_M_uninf$V17)))
## select 3-7d old
meiP26RNAi_M_uninf_offspring <- subset(subset(meiP26RNAi_M_uninf_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

meiP26RNAi_M_wMel_offspring_full <- data.frame(group="meiP26RNAi_M_wMel", age=as.numeric(meiP26RNAi_M_wMel$V5), value=as.numeric(meiP26RNAi_M_wMel$V17), color=rgb(0.93,0.07,0.54,0.7), samples=length(as.numeric(meiP26RNAi_M_wMel$V17)))
## select 3-7d old
meiP26RNAi_M_wMel_offspring <- subset(subset(meiP26RNAi_M_wMel_offspring_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))

#########################
## bind together data frames
M_offspring <- rbind(meiP26RNAi_M_wMel_offspring, meiP26RNAi_M_uninf_offspring, meiP261_M_wMel_offspring, meiP261_M_uninf_offspring, meiP26mfs1_M_wMel_offspring, meiP26mfs1_M_uninf_offspring)

## this produces a data frame with samples in the intended order
M_offspring_levels <- c(paste("meiP26RNAi_M_wMel"), paste("meiP26RNAi_M_uninf"), paste("meiP261_M_wMel"), paste("meiP261_M_uninf"), paste("meiP26mfs1_M_wMel"), paste("meiP26mfs1_M_uninf"))

## reorder by group for beeswarm
M_offspring$group <- factor(M_offspring$group, levels=M_offspring_levels)

pdf("./plots/mei-P26_knockdown_M_offspring_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(M_offspring$value ~ M_offspring$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="# offspring / male / day", names=FALSE)
beeswarm(M_offspring$value ~ M_offspring$group, pwcol=M_offspring$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0:length(M_offspring_levels), y=par("usr")[3]-25, labels=M_offspring_levels, xpd=NA, srt=45, cex=1)
dev.off()



#############
### stats
##
wilcox.test(meiP26RNAi_F_wMel_offspring$value, meiP26RNAi_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_F_wMel_offspring$value and meiP26RNAi_F_uninf_offspring$value
W = 1979, p-value = 0.0001069
alternative hypothesis: true location shift is not equal to 0



wilcox.test(meiP261_F_wMel_offspring$value, meiP261_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_F_wMel_offspring$value and meiP261_F_uninf_offspring$value
W = 1134, p-value = 9.373e-05
alternative hypothesis: true location shift is not equal to 0



wilcox.test(meiP261_F_wMel_offspring$value, meiP261_F_uninfxwMel_offspring$value)



wilcox.test(meiP261_mfs1_F_wMel_offspring$value, meiP261_mfs1_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_mfs1_F_wMel_offspring$value and meiP261_mfs1_F_uninf_offspring$value
W = 94, p-value = 0.09935
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_mfs1_F_wMel_offspring$value, meiP261_mfs1_F_uninf_offspring$value) :
  cannot compute exact p-value with ties

*****Prob insignificant due to SMALL uninfected hatch #s*******
> length(na.omit(meiP261_mfs1_F_wMel_offspring$value))
[1] 26
> length(na.omit(meiP261_mfs1_F_uninf_offspring$value))
[1] 5
## Looks like it... if I double the number of infected offspring, I get the same p-value
##wilcox.test(2*meiP261_mfs1_F_wMel_offspring$value, meiP261_mfs1_F_uninf_offspring$value)
## Yes: https://stats.stackexchange.com/questions/308700/wilcoxon-signed-rank-test-fails-for-small-sample-size
## What is a more appropriate test?
Fisher's exact test, turning data into counts of females producing offspring and those not

wilcox.test(meiP26mfs1_F_wMel_offspring$value, meiP26mfs1_F_uninf_offspring$value)
Error in wilcox.test.default(meiP26mfs1_F_wMel_offspring$value, meiP26mfs1_F_uninf_offspring$value) :
  not enough 'y' observations

###############################################################################
###############################################################################
wilcox.test(WT_OreR_wMel_offspring$value, meiP26RNAi_F_uninf_offspring$value)
wilcox.test(WT_OreR_uninf_offspring$value, meiP26RNAi_F_wMel_offspring$value)


wilcox.test(WT_OreR_wMel_offspring$value, meiP26RNAi_F_wMel_offspring$value)
wilcox.test(WT_OreR_uninf_offspring$value, meiP26RNAi_F_uninf_offspring$value)

wilcox.test(WT_OreR_wMel_offspring$value, meiP261_F_wMel_offspring$value)
wilcox.test(WT_OreR_uninf_offspring$value, meiP261_F_uninf_offspring$value)

wilcox.test(WT_OreR_wMel_offspring$value, meiP261_mfs1_F_wMel_offspring$value)
wilcox.test(WT_OreR_uninf_offspring$value, meiP261_mfs1_F_uninf_offspring$value)

wilcox.test(WT_OreR_wMel_offspring$value, meiP26mfs1_F_wMel_offspring$value)
wilcox.test(WT_OreR_uninf_offspring$value, meiP26mfs1_F_uninf_offspring$value)


> wilcox.test(WT_OreR_wMel_offspring$value, meiP26RNAi_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP26RNAi_F_uninf_offspring$value
W = 3055, p-value = 0.01239
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_offspring$value, meiP26RNAi_F_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and meiP26RNAi_F_wMel_offspring$value
W = 3489, p-value = 0.005776
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_offspring$value, meiP26RNAi_F_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP26RNAi_F_wMel_offspring$value
W = 2521, p-value = 0.01145
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_offspring$value, meiP26RNAi_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and meiP26RNAi_F_uninf_offspring$value
W = 4231, p-value = 0.01262
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_offspring$value, meiP261_F_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP261_F_wMel_offspring$value
W = 4561, p-value = 3.451e-12
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_uninf_offspring$value, meiP261_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and meiP261_F_uninf_offspring$value
W = 4264, p-value = 2.264e-14
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_offspring$value, meiP261_mfs1_F_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP261_mfs1_F_wMel_offspring$value
W = 2509, p-value = 5.011e-10
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_offspring$value, meiP261_mfs1_F_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_offspring$value and meiP261_mfs1_F_uninf_offspring$value
W = 734, p-value = 0.0003402
alternative hypothesis: true location shift is not equal to 0


> wilcox.test(WT_OreR_wMel_offspring$value, meiP26mfs1_F_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP26mfs1_F_wMel_offspring$value
W = 1673, p-value = 1.655e-09
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(WT_OreR_uninf_offspring$value, meiP26mfs1_F_uninf_offspring$value)
Error in wilcox.test.default(WT_OreR_uninf_offspring$value, meiP26mfs1_F_uninf_offspring$value) :
  not enough 'y' observations

###############################################################################
###############################################################################
### Males
###############################################################################
wilcox.test(WT_OreR_wMel_offspring$value, meiP26RNAi_M_wMel_offspring$value)
wilcox.test(meiP26RNAi_M_uninf_offspring$value, WT_OreR_uninf_offspring$value)

> wilcox.test(WT_OreR_wMel_offspring$value, meiP26RNAi_M_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP26RNAi_M_wMel_offspring$value
W = 1143, p-value = 0.003724
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP26RNAi_M_uninf_offspring$value, WT_OreR_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_M_uninf_offspring$value and WT_OreR_uninf_offspring$value
W = 2578.5, p-value = 0.06538
alternative hypothesis: true location shift is not equal to 0



###
wilcox.test(WT_OreR_wMel_offspring$value, meiP261_M_wMel_offspring$value)
wilcox.test(meiP261_M_uninf_offspring$value, WT_OreR_uninf_offspring$value)

> wilcox.test(WT_OreR_wMel_offspring$value, meiP261_M_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP261_M_wMel_offspring$value
W = 695, p-value = 0.0003956
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP261_M_uninf_offspring$value, WT_OreR_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_M_uninf_offspring$value and WT_OreR_uninf_offspring$value
W = 1979, p-value = 0.06603
alternative hypothesis: true location shift is not equal to 0

####
wilcox.test(WT_OreR_wMel_offspring$value, meiP26mfs1_M_wMel_offspring$value)
wilcox.test(meiP26mfs1_M_uninf_offspring$value, WT_OreR_uninf_offspring$value)

> wilcox.test(WT_OreR_wMel_offspring$value, meiP26mfs1_M_wMel_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_offspring$value and meiP26mfs1_M_wMel_offspring$value
W = 1027, p-value = 0.4345
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(meiP26mfs1_M_uninf_offspring$value, WT_OreR_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_M_uninf_offspring$value and WT_OreR_uninf_offspring$value
W = 27, p-value = 0.0004279
alternative hypothesis: true location shift is not equal to 0


###
wilcox.test(meiP26RNAi_M_wMel_offspring$value, meiP26RNAi_M_uninf_offspring$value)
wilcox.test(meiP261_M_wMel_offspring$value, meiP261_M_uninf_offspring$value)
wilcox.test(meiP26mfs1_M_wMel_offspring$value, meiP26mfs1_M_uninf_offspring$value)

> wilcox.test(meiP26RNAi_M_wMel_offspring$value, meiP26RNAi_M_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26RNAi_M_wMel_offspring$value and meiP26RNAi_M_uninf_offspring$value
W = 500.5, p-value = 0.4409
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26RNAi_M_wMel_offspring$value, meiP26RNAi_M_uninf_offspring$value) :
  cannot compute exact p-value with ties

> wilcox.test(meiP261_M_wMel_offspring$value, meiP261_M_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP261_M_wMel_offspring$value and meiP261_M_uninf_offspring$value
W = 314.5, p-value = 0.1584
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP261_M_wMel_offspring$value, meiP261_M_uninf_offspring$value) :
  cannot compute exact p-value with ties

> wilcox.test(meiP26mfs1_M_wMel_offspring$value, meiP26mfs1_M_uninf_offspring$value)

	Wilcoxon rank sum test with continuity correction

data:  meiP26mfs1_M_wMel_offspring$value and meiP26mfs1_M_uninf_offspring$value
W = 70, p-value = 0.02846
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(meiP26mfs1_M_wMel_offspring$value, meiP26mfs1_M_uninf_offspring$value) :
  cannot compute exact p-value with ties


  ################
length(meiP26RNAi_F_wMel_offspring$value)
mean(na.omit(meiP26RNAi_F_wMel_offspring$value))
length(meiP26RNAi_F_uninf_offspring$value)
mean(na.omit(meiP26RNAi_F_uninf_offspring$value))
length(meiP261_F_wMel_offspring$value)
mean(na.omit(meiP261_F_wMel_offspring$value))
length(meiP261_F_uninf_offspring$value)
mean(na.omit(meiP261_F_uninf_offspring$value))
length(meiP26mfs1_F_wMel_offspring$value)
mean(na.omit(meiP26mfs1_F_wMel_offspring$value))
length(meiP26mfs1_F_uninf_offspring$value)
mean(na.omit(meiP26mfs1_F_uninf_offspring$value))
length(meiP261_mfs1_F_wMel_offspring$value)
mean(na.omit(meiP261_mfs1_F_wMel_offspring$value))
length(meiP261_mfs1_F_uninf_offspring$value)
mean(na.omit(meiP261_mfs1_F_uninf_offspring$value))

> length(meiP26RNAi_F_wMel_offspring$value)
[1] 66
> mean(na.omit(meiP26RNAi_F_wMel_offspring$value))
[1] 37.01508
> length(meiP26RNAi_F_uninf_offspring$value)
[1] 60
> mean(na.omit(meiP26RNAi_F_uninf_offspring$value))
[1] 18.37756
> length(meiP261_F_wMel_offspring$value)
[1] 73
> mean(na.omit(meiP261_F_wMel_offspring$value))
[1] 6.9566
> length(meiP261_F_uninf_offspring$value)
[1] 45
> mean(na.omit(meiP261_F_uninf_offspring$value))
[1] 1.608
> length(meiP26mfs1_F_wMel_offspring$value)
[1] 25
> mean(na.omit(meiP26mfs1_F_wMel_offspring$value))
[1] 0.758125
> length(meiP26mfs1_F_uninf_offspring$value)
[1] 19
> mean(na.omit(meiP26mfs1_F_uninf_offspring$value))
[1] NaN
> length(meiP261_mfs1_F_wMel_offspring$value)
[1] 42
> mean(na.omit(meiP261_mfs1_F_wMel_offspring$value))
[1] 4.564231
> length(meiP261_mfs1_F_uninf_offspring$value)
[1] 37
> mean(na.omit(meiP261_mfs1_F_uninf_offspring$value))
[1] 0.184


#############
###########################
###########################
#### Males
###########
length(meiP26RNAi_M_wMel_offspring$value)
mean(na.omit(meiP26RNAi_M_wMel_offspring$value))
length(meiP26RNAi_M_uninf_offspring$value)
mean(na.omit(meiP26RNAi_M_uninf_offspring$value))
length(meiP261_M_wMel_offspring$value)
mean(na.omit(meiP261_M_wMel_offspring$value))
length(meiP261_M_uninf_offspring$value)
mean(na.omit(meiP261_M_uninf_offspring$value))
length(meiP26mfs1_M_wMel_offspring$value)
mean(na.omit(meiP26mfs1_M_wMel_offspring$value))
length(meiP26mfs1_M_uninf_offspring$value)
mean(na.omit(meiP26mfs1_M_uninf_offspring$value))

> length(meiP26RNAi_M_wMel_offspring$value)
[1] 35
> mean(na.omit(meiP26RNAi_M_wMel_offspring$value))
[1] 36.11438
> length(meiP26RNAi_M_uninf_offspring$value)
[1] 35
> mean(na.omit(meiP26RNAi_M_uninf_offspring$value))
[1] 32.44536
> length(meiP261_M_wMel_offspring$value)
[1] 32
> mean(na.omit(meiP261_M_wMel_offspring$value))
[1] 43.38
> length(meiP261_M_uninf_offspring$value)
[1] 21
> mean(na.omit(meiP261_M_uninf_offspring$value))
[1] 32.49286
> length(meiP26mfs1_M_wMel_offspring$value)
[1] 21
> mean(na.omit(meiP26mfs1_M_wMel_offspring$value))
[1] 24.84235
> length(meiP26mfs1_M_uninf_offspring$value)
[1] 24
> mean(na.omit(meiP26mfs1_M_uninf_offspring$value))
[1] 0.396
