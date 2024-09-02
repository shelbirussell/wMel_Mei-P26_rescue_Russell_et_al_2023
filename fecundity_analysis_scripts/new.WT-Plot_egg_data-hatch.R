
##############
## uninf - "grey30" == rgb(0.7,0.7,0.7,0.7)
## wMel - "grey70" == rgb(0.3,0.3,0.3,0.7)
# Egg hatch, retaining %hatch counts ($V16) with >= 20 total eggs laid ($V12)
################################################################################
if(length(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)]) > 0) {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=20)]), value=as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)]), lay=as.numeric(WT_OreR_wMel$V13 [which(WT_OreR_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)])))} else {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", value=as.numeric(0), lay=as.numeric(WT_OreR_wMel$V13 [which(WT_OreR_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=20)])), age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=20)]))}
## select 3-7d old
WT_OreR_wMel_hatch <- subset(subset(WT_OreR_wMel_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

###################

if(length(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)]) > 0) {WT_OreR_wMel_recip_hatch_full <- data.frame(group="WT_OreR_wMel_recip", age=as.numeric(WT_OreR_wMel_recip$V5 [which(WT_OreR_wMel_recip$V12>=20)]), value=as.numeric(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)]), lay=as.numeric(WT_OreR_wMel_recip$V13 [which(WT_OreR_wMel_recip$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)])))} else {WT_OreR_wMel_recip_hatch_full <- data.frame(group="WT_OreR_wMel_recip", value=as.numeric(0), lay=as.numeric(WT_OreR_wMel_recip$V13 [which(WT_OreR_wMel_recip$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel_recip$V16 [which(WT_OreR_wMel_recip$V12>=20)])), age=as.numeric(WT_OreR_wMel_recip$V5 [which(WT_OreR_wMel_recip$V12>=20)]))}
## select 3-7d old
WT_OreR_wMel_recip_hatch <- subset(subset(WT_OreR_wMel_recip_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))


###########
if(length(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)]) > 0) {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=20)]), value=as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)]), lay=as.numeric(WT_OreR_uninf$V13 [which(WT_OreR_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)])))} else {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", value=as.numeric(0), lay=as.numeric(WT_OreR_uninf$V13 [which(WT_OreR_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=20)])), age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=20)]))}
## select 3-7d old
WT_OreR_uninf_hatch <- subset(subset(WT_OreR_uninf_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

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

########

if(length(RFP_wMel$V16 [which(RFP_wMel$V12>=20)]) > 0) {RFP_wMel_hatch_full <- data.frame(group="RFP_wMel", age=as.numeric(RFP_wMel$V5 [which(RFP_wMel$V12>=20)]), value=as.numeric(RFP_wMel$V16 [which(RFP_wMel$V12>=20)]), lay=as.numeric(RFP_wMel$V13 [which(RFP_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(RFP_wMel$V16 [which(RFP_wMel$V12>=20)])))} else {RFP_wMel_hatch_full <- data.frame(group="RFP_wMel", value=as.numeric(0), lay=as.numeric(RFP_wMel$V13 [which(RFP_wMel$V12>=20)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(RFP_wMel$V16 [which(RFP_wMel$V12>=20)])), age=as.numeric(RFP_wMel$V5 [which(RFP_wMel$V12>=20)]))}
## select 3-7d old
RFP_wMel_hatch <- subset(subset(RFP_wMel_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))

if(length(RFP_uninf$V16 [which(RFP_uninf$V12>=20)]) > 0) {RFP_uninf_hatch_full <- data.frame(group="RFP_uninf", age=as.numeric(RFP_uninf$V5 [which(RFP_uninf$V12>=20)]), value=as.numeric(RFP_uninf$V16 [which(RFP_uninf$V12>=20)]), lay=as.numeric(RFP_uninf$V13 [which(RFP_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(RFP_uninf$V16 [which(RFP_uninf$V12>=20)])))} else {RFP_uninf_hatch_full <- data.frame(group="RFP_uninf", value=as.numeric(0), lay=as.numeric(RFP_uninf$V13 [which(RFP_uninf$V12>=20)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(RFP_uninf$V16 [which(RFP_uninf$V12>=20)])), age=as.numeric(RFP_uninf$V5 [which(RFP_uninf$V12>=20)]))}
## select 3-7d old
RFP_uninf_hatch <- subset(subset(RFP_uninf_hatch_full, age <=7, select=c(group, value, lay, color, samples, age)), age >2, select=c(group, value, lay, color, samples, age))



#################################################################################
#################################################################################
#################################################################################
## bind together data frames
all_F_egg_hatch <- rbind(WT_OreR_wMel_hatch, WT_OreR_uninf_hatch, WT_F10_OreR_uninf_hatch, WT_Gal4CyO_wMel_hatch, WT_Gal4CyO_uninf_hatch, WT_Gal4Sb_wMel_hatch, WT_Gal4Sb_uninf_hatch, RFP_wMel_hatch, RFP_uninf_hatch)
## this produces a data frame with samples in the intended order
all_F_hatch_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_uninf"), paste("WT_F10_OreR_uninf"), paste("WT_Gal4CyO_wMel"), paste("WT_Gal4CyO_uninf"), paste("WT_Gal4Sb_wMel"), paste("WT_Gal4Sb_uninf"), paste("RFP_wMel"), paste("RFP_uninf"))
## reorder by group for beeswarm
all_F_egg_hatch$group <- factor(all_F_egg_hatch$group, levels=all_F_hatch_levels)

pdf("all-WT_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(all_F_egg_hatch$value ~ all_F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(all_F_egg_hatch$value ~ all_F_egg_hatch$group, pwcol=all_F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(all_F_hatch_levels)-1, y=par("usr")[3]-20, labels=all_F_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()

######################################################
######################################################

recip_all_F_egg_hatch <- rbind(WT_OreR_wMel_hatch, WT_OreR_wMel_recip_hatch, WT_OreR_uninf_hatch, WT_F10_OreR_uninf_hatch, WT_Gal4CyO_wMel_hatch, WT_Gal4CyO_uninf_hatch, WT_Gal4Sb_wMel_hatch, WT_Gal4Sb_uninf_hatch, RFP_wMel_hatch, RFP_uninf_hatch)
## this produces a data frame with samples in the intended order
recip_all_F_hatch_levels <- c(paste("WT_OreR_wMel"), paste("WT_OreR_wMel_recip"), paste("WT_OreR_uninf"), paste("WT_F10_OreR_uninf"), paste("WT_Gal4CyO_wMel"), paste("WT_Gal4CyO_uninf"), paste("WT_Gal4Sb_wMel"), paste("WT_Gal4Sb_uninf"), paste("RFP_wMel"), paste("RFP_uninf"))
## reorder by group for beeswarm
recip_all_F_egg_hatch$group <- factor(recip_all_F_egg_hatch$group, levels=recip_all_F_hatch_levels)

pdf("recip.all-WT_egg_hatch_3-7d_beeswarm_boxplot.pdf")
par(mar=c(9,12,4,5))
boxplot(recip_all_F_egg_hatch$value ~ recip_all_F_egg_hatch$group, outline=FALSE, col="white", ylim=c(0,100), xlab="", ylab="% eggs hatched (>=20 eggs laid)", names=FALSE)
beeswarm(recip_all_F_egg_hatch$value ~ recip_all_F_egg_hatch$group, pwcol=recip_all_F_egg_hatch$color, pch=19, method="swarm", corral="wrap", priority="density", labels=FALSE, add=TRUE, cex=1)
text(x=1:length(recip_all_F_hatch_levels)-1, y=par("usr")[3]-20, labels=recip_all_F_hatch_levels, xpd=NA, srt=45, cex=1)
dev.off()


#################################################################################
################################################################################
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

##
wilcox.test(RFP_wMel_hatch$value, RFP_uninf_hatch$value)
> wilcox.test(RFP_wMel_hatch$value, RFP_uninf_hatch$value)

	Wilcoxon rank sum test with continuity correction

data:  RFP_wMel_hatch$value and RFP_uninf_hatch$value
W = 95, p-value = 0.9815
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(RFP_wMel_hatch$value, RFP_uninf_hatch$value) :
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


length(RFP_wMel_hatch$value)
> length(RFP_wMel_hatch$value)
[1] 12

length(RFP_uninf_hatch$value)
> length(RFP_uninf_hatch$value)
[1] 16
