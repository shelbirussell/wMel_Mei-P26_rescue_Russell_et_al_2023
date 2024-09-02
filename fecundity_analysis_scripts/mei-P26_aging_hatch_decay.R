##################
### Hatch ###
## limit at >= 10 eggs to increase sampling for older females

if(length(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=10)]) > 0) {meiP261_F_wMel_hatch_full <- data.frame(group="meiP261_F_wMel", age=as.numeric(meiP261_F_wMel$V5 [which(meiP261_F_wMel$V12>=10)]), value=as.numeric(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=10)]), lay=as.numeric(meiP261_F_wMel$V13 [which(meiP261_F_wMel$V12>=10)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=10)])))} else {meiP261_F_wMel_hatch_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(0), lay=as.numeric(meiP261_F_wMel$V13 [which(meiP261_F_wMel$V12>=10)]), color=rgb(0.93,0.07,0.54,1), samples=length(as.numeric(meiP261_F_wMel$V16 [which(meiP261_F_wMel$V12>=10)])), age=as.numeric(meiP261_F_wMel$V5 [which(meiP261_F_wMel$V12>=10)]))}

if(length(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=10)]) > 0) {meiP261_F_uninf_hatch_full <- data.frame(group="meiP261_F_uninf", age=as.numeric(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=10)]), value=as.numeric(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=10)]), lay=as.numeric(meiP261_F_uninf$V13 [which(meiP261_F_uninf$V12>=10)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=10)])))} else {meiP261_F_uninf_hatch_full <- data.frame(group="meiP261_F_uninf", value=as.numeric(0), lay=as.numeric(meiP261_F_uninf$V13 [which(meiP261_F_uninf$V12>=10)]), color=rgb(0.933,0.635,0.678,1), samples=length(as.numeric(meiP261_F_uninf$V16 [which(meiP261_F_uninf$V12>=10)])), age=as.numeric(meiP261_F_uninf$V5 [which(meiP261_F_uninf$V12>=10)]))}

if(length(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=10)]) > 0) {meiP26RNAi_F_wMel_hatch_full <- data.frame(group="meiP26RNAi_F_wMel", age=as.numeric(meiP26RNAi_F_wMel$V5 [which(meiP26RNAi_F_wMel$V12>=10)]), value=as.numeric(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=10)]), lay=as.numeric(meiP26RNAi_F_wMel$V13 [which(meiP26RNAi_F_wMel$V12>=10)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=10)])))} else {meiP26RNAi_F_wMel_hatch_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(0), lay=as.numeric(meiP26RNAi_F_wMel$V13 [which(meiP26RNAi_F_wMel$V12>=10)]), color=rgb(0.93,0.07,0.54,1), samples=length(as.numeric(meiP26RNAi_F_wMel$V16 [which(meiP26RNAi_F_wMel$V12>=10)])), age=as.numeric(meiP26RNAi_F_wMel$V5 [which(meiP26RNAi_F_wMel$V12>=10)]))}

if(length(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=10)]) > 0) {meiP26RNAi_F_uninf_hatch_full <- data.frame(group="meiP26RNAi_F_uninf", age=as.numeric(meiP26RNAi_F_uninf$V5 [which(meiP26RNAi_F_uninf$V12>=10)]), value=as.numeric(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=10)]), lay=as.numeric(meiP26RNAi_F_uninf$V13 [which(meiP26RNAi_F_uninf$V12>=10)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=10)])))} else {meiP26RNAi_F_uninf_hatch_full <- data.frame(group="meiP26RNAi_F_uninf", value=as.numeric(0), lay=as.numeric(meiP26RNAi_F_uninf$V13 [which(meiP26RNAi_F_uninf$V12>=10)]), color=rgb(0.933,0.635,0.678,1), samples=length(as.numeric(meiP26RNAi_F_uninf$V16 [which(meiP26RNAi_F_uninf$V12>=10)])), age=as.numeric(meiP26RNAi_F_uninf$V5 [which(meiP26RNAi_F_uninf$V12>=10)]))}


###########
meiP261_hatch <- data.frame(t=meiP261_F_wMel_hatch_full$age, y=meiP261_F_wMel_hatch_full$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=meiP261_F_uninf_hatch_full$age, y=meiP261_F_uninf_hatch_full$value, group=as.factor('uninfected')))

meiP26RNAi_hatch <- data.frame(t=meiP26RNAi_F_wMel_hatch_full$age, y=meiP26RNAi_F_wMel_hatch_full$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=meiP26RNAi_F_uninf_hatch_full$age, y=meiP26RNAi_F_uninf_hatch_full$value, group=as.factor('uninfected')))

##########################################################
#######
## Plot
#######
#######
## hypomorph
#####

## loess = local polynomial regression
pdf("mei-P26[1]_egg_hatch_vs_age_loess.pdf")
ggplot(meiP261_hatch, aes(x=t, y=y, color=group)) + ylim(0,100) + geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=20 eggs laid)") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
pdf("mei-P26[1]_egg_hatch_vs_age_boxplot.pdf")
ggplot(meiP261_hatch, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=20 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()

## above + plot all points
pdf("mei-P26[1]_egg_hatch_vs_age_boxplot+pts.pdf")
ggplot(meiP261_hatch, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=20 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve

#######
## RNAi
######
## loess = local polynomial regression
## set span=1 for loess CI shading in regions of low sampling: https://stackoverflow.com/questions/70080627/missing-confidence-intervals-on-a-geom-smooth-function-with-double-y-graph
pdf("mei-P26RNAi_egg_hatch_vs_age_loess-xlim.pdf")
ggplot(meiP26RNAi_hatch, aes(x=t, y=y, color=group)) +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95, span=1) + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=10 eggs laid)") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) + xlim(2,25) + ylim(0,100)
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
pdf("mei-P26RNAi_egg_hatch_vs_age_boxplot.pdf")
ggplot(meiP26RNAi_hatch, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=20 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()

## above + plot all points
pdf("mei-P26RNAi_egg_hatch_vs_age_boxplot+pts.pdf")
ggplot(meiP26RNAi_hatch, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=20 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve

#############################################################
