
##############
## uninf - "grey30" == rgb(0.7,0.7,0.7,0.7)
## wMel - "grey70" == rgb(0.3,0.3,0.3,0.7)
# Egg hatch, retaining %hatch counts ($V16) with >= 20 total eggs laid ($V12)
################################################################################
if(length(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)]) > 0) {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=20)]), value=as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)]), lay=as.numeric(WT_OreR_wMel$V13 [which(WT_OreR_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)])), batch=(WT_OreR_wMel$V1 [which(WT_OreR_wMel$V12>=20)]))} else {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", value=as.numeric(0), lay=as.numeric(WT_OreR_wMel$V13 [which(WT_OreR_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)])), age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=20)]), batch="0")}
## select 3-7d old
WT_OreR_wMel_hatch <- subset(subset(WT_OreR_wMel_hatch_full, age <=7, select=c(group, value, lay, color, samples, age, batch)), age >2, select=c(group, value, lay, color, samples, age, batch))

###########
if(length(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)]) > 0) {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=20)]), value=as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)]), lay=as.numeric(WT_OreR_uninf$V13 [which(WT_OreR_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)])), batch=(WT_OreR_uninf$V1 [which(WT_OreR_uninf$V12>=20)]))} else {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", value=as.numeric(0), lay=as.numeric(WT_OreR_uninf$V13 [which(WT_OreR_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)])), age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=20)]), batch="0")}
## select 3-7d old
WT_OreR_uninf_hatch <- subset(subset(WT_OreR_uninf_hatch_full, age <=7, select=c(group, value, lay, color, samples, age, batch)), age >2, select=c(group, value, lay, color, samples, age, batch))

######
if(length(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=20)]) > 0) {WT_F10_OreR_uninf_hatch_full <- data.frame(group="WT_F10_OreR_uninf", age=as.numeric(WT_F10_OreR_uninf$V5 [which(WT_F10_OreR_uninf$V12>=20)]), value=as.numeric(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=20)]), lay=as.numeric(WT_F10_OreR_uninf$V13 [which(WT_F10_OreR_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=20)])))} else {WT_F10_OreR_uninf_hatch_full <- data.frame(group="WT_F10_OreR_uninf", value=as.numeric(0), lay=as.numeric(WT_F10_OreR_uninf$V13 [which(WT_F10_OreR_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=20)])), age=as.numeric(WT_F10_OreR_uninf$V5 [which(WT_F10_OreR_uninf$V12>=20)]))}
## select 3-7d old
WT_F10_OreR_uninf_hatch <- subset(subset(WT_F10_OreR_uninf_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

########
########
if(length(WT_Gal4CyO_wMel$V16 [which(WT_Gal4CyO_wMel$V12>=20)]) > 0) {WT_Gal4CyO_wMel_hatch_full <- data.frame(group="WT_Gal4CyO_wMel", age=as.numeric(WT_Gal4CyO_wMel$V5 [which(WT_Gal4CyO_wMel$V12>=20)]), value=as.numeric(WT_Gal4CyO_wMel$V16 [which(WT_Gal4CyO_wMel$V12>=20)]), lay=as.numeric(WT_Gal4CyO_wMel$V13 [which(WT_Gal4CyO_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_Gal4CyO_wMel$V16 [which(WT_Gal4CyO_wMel$V12>=20)])))} else {WT_Gal4CyO_wMel_hatch_full <- data.frame(group="WT_Gal4CyO_wMel", value=as.numeric(0), lay=as.numeric(WT_Gal4CyO_wMel$V13 [which(WT_Gal4CyO_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_Gal4CyO_wMel$V16 [which(WT_Gal4CyO_wMel$V12>=20)])), age=as.numeric(WT_Gal4CyO_wMel$V5 [which(WT_Gal4CyO_wMel$V12>=20)]))}
## select 3-7d old
WT_Gal4CyO_wMel_hatch <- subset(subset(WT_Gal4CyO_wMel_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

if(length(WT_Gal4CyO_uninf$V16 [which(WT_Gal4CyO_uninf$V12>=20)]) > 0) {WT_Gal4CyO_uninf_hatch_full <- data.frame(group="WT_Gal4CyO_uninf", age=as.numeric(WT_Gal4CyO_uninf$V5 [which(WT_Gal4CyO_uninf$V12>=20)]), value=as.numeric(WT_Gal4CyO_uninf$V16 [which(WT_Gal4CyO_uninf$V12>=20)]), lay=as.numeric(WT_Gal4CyO_uninf$V13 [which(WT_Gal4CyO_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_Gal4CyO_uninf$V16 [which(WT_Gal4CyO_uninf$V12>=20)])))} else {WT_Gal4CyO_uninf_hatch_full <- data.frame(group="WT_Gal4CyO_uninf", value=as.numeric(0), lay=as.numeric(WT_Gal4CyO_uninf$V13 [which(WT_Gal4CyO_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_Gal4CyO_uninf$V16 [which(WT_Gal4CyO_uninf$V12>=20)])), age=as.numeric(WT_Gal4CyO_uninf$V5 [which(WT_Gal4CyO_uninf$V12>=20)]))}
## select 3-7d old
WT_Gal4CyO_uninf_hatch <- subset(subset(WT_Gal4CyO_uninf_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

####
if(length(WT_Gal4Sb_wMel$V16 [which(WT_Gal4Sb_wMel$V12>=20)]) > 0) {WT_Gal4Sb_wMel_hatch_full <- data.frame(group="WT_Gal4Sb_wMel", age=as.numeric(WT_Gal4Sb_wMel$V5 [which(WT_Gal4Sb_wMel$V12>=20)]), value=as.numeric(WT_Gal4Sb_wMel$V16 [which(WT_Gal4Sb_wMel$V12>=20)]), lay=as.numeric(WT_Gal4Sb_wMel$V13 [which(WT_Gal4Sb_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_Gal4Sb_wMel$V16 [which(WT_Gal4Sb_wMel$V12>=20)])))} else {WT_Gal4Sb_wMel_hatch_full <- data.frame(group="WT_Gal4Sb_wMel", value=as.numeric(0), lay=as.numeric(WT_Gal4Sb_wMel$V13 [which(WT_Gal4Sb_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_Gal4Sb_wMel$V16 [which(WT_Gal4Sb_wMel$V12>=20)])), age=as.numeric(WT_Gal4Sb_wMel$V5 [which(WT_Gal4Sb_wMel$V12>=20)]))}
## select 3-7d old
WT_Gal4Sb_wMel_hatch <- subset(subset(WT_Gal4Sb_wMel_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

if(length(WT_Gal4Sb_uninf$V16 [which(WT_Gal4Sb_uninf$V12>=20)]) > 0) {WT_Gal4Sb_uninf_hatch_full <- data.frame(group="WT_Gal4Sb_uninf", age=as.numeric(WT_Gal4Sb_uninf$V5 [which(WT_Gal4Sb_uninf$V12>=20)]), value=as.numeric(WT_Gal4Sb_uninf$V16 [which(WT_Gal4Sb_uninf$V12>=20)]), lay=as.numeric(WT_Gal4Sb_uninf$V13 [which(WT_Gal4Sb_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_Gal4Sb_uninf$V16 [which(WT_Gal4Sb_uninf$V12>=20)])))} else {WT_Gal4Sb_uninf_hatch_full <- data.frame(group="WT_Gal4Sb_uninf", value=as.numeric(0), lay=as.numeric(WT_Gal4Sb_uninf$V13 [which(WT_Gal4Sb_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_Gal4Sb_uninf$V16 [which(WT_Gal4Sb_uninf$V12>=20)])), age=as.numeric(WT_Gal4Sb_uninf$V5 [which(WT_Gal4Sb_uninf$V12>=20)]))}
## select 3-7d old
WT_Gal4Sb_uninf_hatch <- subset(subset(WT_Gal4Sb_uninf_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

#################################################################################
#################################################################################
#################################################################################
## bind together data frames
all_F_egg_hatch <- rbind(WT_OreR_wMel_hatch, WT_OreR_uninf_hatch, WT_F10_OreR_uninf_hatch, WT_Gal4CyO_wMel_hatch, WT_Gal4CyO_uninf_hatch, WT_Gal4Sb_wMel_hatch, WT_Gal4Sb_uninf_hatch)
## this produces a data frame with samples in the intended order
all_F_hatch_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("WT_F10_OreR_uninf"), paste("WT_Gal4CyO_wMel"), paste("WT_Gal4CyO_uninf"), paste("WT_Gal4Sb_wMel"), paste("WT_Gal4Sb_uninf"))
## reorder by group for beeswarm
all_F_egg_hatch$group <- factor(all_F_egg_hatch$group, levels=all_F_hatch_levels)

pdf("all-WT_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(all_F_egg_hatch$value ~ all_F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(all_F_egg_hatch$value ~ all_F_egg_hatch$group, pwcol=all_F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0:length(all_F_hatch_levels)-1, y=par("usr")[3]-20, labels=all_F_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()

#################################################################################
################################################################################

## bind together data frames
F_egg_hatch_pair <- rbind(WT_OreR_wMel_hatch, WT_OreR_uninf_hatch)
## this produces a data frame with samples in the intended order
F_hatch_levels_pair <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"))
## reorder by group for beeswarm
F_egg_hatch_pair$group <- factor(F_egg_hatch_pair$group, levels=F_hatch_levels_pair)

pdf("pair-WT_OreR_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_hatch_pair$value ~ F_egg_hatch_pair$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(F_egg_hatch_pair$value ~ F_egg_hatch_pair$group, pwcol=F_egg_hatch_pair$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(F_hatch_levels_pair), y=par("usr")[3]-20, labels=F_hatch_levels_pair, xpd=NA, srt=45, cex=1.2)
dev.off()

############

## bind together data frames
F_egg_hatch_pair <- rbind(WT_OreR_wMel_hatch, WT_F10_OreR_uninf_hatch)
## this produces a data frame with samples in the intended order
F_hatch_levels_pair <- c(paste("WT_OreR_wMel"), paste("WT_F10_OreR_uninf"))
## reorder by group for beeswarm
F_egg_hatch_pair$group <- factor(F_egg_hatch_pair$group, levels=F_hatch_levels_pair)

pdf("WT_F10_egg_hatch_pair_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(F_egg_hatch_pair$value ~ F_egg_hatch_pair$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(F_egg_hatch_pair$value ~ F_egg_hatch_pair$group, pwcol=F_egg_hatch_pair$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(F_hatch_levels_pair), y=par("usr")[3]-5, labels=F_hatch_levels_pair, xpd=NA, srt=45, cex=1.2)
dev.off()

#################################################################################

#############################
## bind together data frames #
Gal4CyO_F_egg_hatch <- rbind(WT_Gal4CyO_wMel_hatch, WT_Gal4CyO_uninf_hatch)
Gal4CyO_F_hatch_levels <- c(paste("WT_Gal4CyO_wMel"), paste("WT_Gal4CyO_uninf"))
## reorder by group for beeswarm
Gal4CyO_F_egg_hatch$group <- factor(Gal4CyO_F_egg_hatch$group, levels=Gal4CyO_F_hatch_levels)

#
## plot
pdf("WT_Gal4CyO_egg_hatch_3-7d.pdf")
par(mar=c(9,12,4,5))
boxplot(Gal4CyO_F_egg_hatch$value ~ Gal4CyO_F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(Gal4CyO_F_egg_hatch$value ~ Gal4CyO_F_egg_hatch$group, pwcol=Gal4CyO_F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=0.8:length(Gal4CyO_F_hatch_levels)-0.2, y=par("usr")[3]-12, labels=Gal4CyO_F_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()

#############################
## bind together data frames #
Gal4Sb_F_egg_hatch <- rbind(WT_Gal4Sb_wMel_hatch, WT_Gal4Sb_uninf_hatch)
Gal4Sb_F_hatch_levels <- c(paste("WT_Gal4Sb_wMel"), paste("WT_Gal4Sb_uninf"))
#
## plot
pdf("WT_Gal4Sb_egg_hatch_3-7d.pdf")
par(mar=c(5,12,4,5))
Gal4Sb_F_egg_hatch %>% mutate(group=paste0(group)) %>% mutate(group=fct_relevel(group, rev(Gal4Sb_F_hatch_levels))) %>% ggplot(aes(y=group, x=value)) + geom_boxplot(notch=FALSE, size=1) + geom_jitter(size=6, alpha=0.75, col=Gal4Sb_F_egg_hatch$color, shape=16, stroke=2, na.rm=TRUE, position=position_jitter(w=0, h=0.3)) + theme_bw() + xlab("% eggs hatched (>=20 eggs laid)") + ylab("genotype + infection status") + theme(axis.text.x = element_text(angle = 45, hjust = 1), legend.position = "none", axis.text = element_text(size=14), axis.title=element_text(size=14), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line=element_line(colour='black', size=1.5), axis.ticks = element_line(colour='black', size=2), panel.border = element_blank())
dev.off()

#####################################################################
#####################################################################
#####################################################################
wilcox.test(WT_OreR_wMel_hatch$value, WT_OreR_wMel_recip_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and WT_OreR_wMel_recip_hatch$value
W = 1698.5, p-value = 0.1267
alternative hypothesis: true location shift is not equal to 0


wilcox.test(WT_OreR_uninf_hatch$value, WT_OreR_wMel_recip_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and WT_OreR_wMel_recip_hatch$value
W = 1413.5, p-value = 0.009598
alternative hypothesis: true location shift is not equal to 0


wilcox.test(WT_F10_OreR_uninf_hatch$value, WT_OreR_wMel_recip_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_F10_OreR_uninf_hatch$value and WT_OreR_wMel_recip_hatch$value
W = 1089.5, p-value = 0.3831
alternative hypothesis: true location shift is not equal to 0


wilcox.test(WT_OreR_wMel_hatch$value, WT_OreR_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and WT_OreR_uninf_hatch$value
W = 5712, p-value = 3.455e-07
alternative hypothesis: true location shift is not equal to 0

##

wilcox.test(WT_OreR_uninf_hatch$value, WT_F10_OreR_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_uninf_hatch$value and WT_F10_OreR_uninf_hatch$value
W = 2847, p-value = 0.1165
alternative hypothesis: true location shift is not equal to 0


##

wilcox.test(WT_OreR_wMel_hatch$value, WT_F10_OreR_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_OreR_wMel_hatch$value and WT_F10_OreR_uninf_hatch$value
W = 3057, p-value = 0.008983
alternative hypothesis: true location shift is not equal to 0


##

wilcox.test(WT_Gal4CyO_wMel_hatch$value, WT_Gal4CyO_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_Gal4CyO_wMel_hatch$value and WT_Gal4CyO_uninf_hatch$value
W = 1421.5, p-value = 0.002075
alternative hypothesis: true location shift is not equal to 0

##

wilcox.test(WT_Gal4Sb_wMel_hatch$value, WT_Gal4Sb_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  WT_Gal4Sb_wMel_hatch$value and WT_Gal4Sb_uninf_hatch$value
W = 375.5, p-value = 0.8366
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(WT_Gal4Sb_wMel_hatch$value, WT_Gal4Sb_uninf_hatch$value) :
  cannot compute exact p-value with ties

#############
#############
#############

length(WT_OreR_wMel_recip_hatch$value)
mean(WT_OreR_wMel_recip_hatch$value)

length(WT_OreR_uninf_hatch$value)
mean(WT_OreR_uninf_hatch$value)
> length(WT_OreR_uninf_hatch$value)
[1] 104
> mean(WT_OreR_uninf_hatch$value)
[1] 83.17962

length(WT_OreR_wMel_hatch$value)
mean(WT_OreR_wMel_hatch$value)
> length(WT_OreR_wMel_hatch$value)
[1] 76
> mean(WT_OreR_wMel_hatch$value)
[1] 88.39566

length(WT_F10_OreR_uninf_hatch$value)
mean(WT_F10_OreR_uninf_hatch$value)
> length(WT_F10_OreR_uninf_hatch$value)
[1] 64
> mean(WT_F10_OreR_uninf_hatch$value)
[1] 80.88422


length(WT_Gal4CyO_wMel_hatch$value)
mean(WT_Gal4CyO_wMel_hatch$value)
> length(WT_Gal4CyO_wMel_hatch$value)
[1] 66
> mean(WT_Gal4CyO_wMel_hatch$value)
[1] 91.30606

length(WT_Gal4CyO_uninf_hatch$value)
mean(WT_Gal4CyO_uninf_hatch$value)
> length(WT_Gal4CyO_uninf_hatch$value)
[1] 31
> mean(WT_Gal4CyO_uninf_hatch$value)
[1] 88.8329


length(WT_Gal4Sb_wMel_hatch$value)
mean(WT_Gal4Sb_wMel_hatch$value)
> length(WT_Gal4Sb_wMel_hatch$value)
[1] 33
> mean(WT_Gal4Sb_wMel_hatch$value)
[1] 88.6603

length(WT_Gal4Sb_uninf_hatch$value)
mean(WT_Gal4Sb_uninf_hatch$value)
> length(WT_Gal4Sb_uninf_hatch$value)
[1] 22
> mean(WT_Gal4Sb_uninf_hatch$value)
[1] 89.55136
