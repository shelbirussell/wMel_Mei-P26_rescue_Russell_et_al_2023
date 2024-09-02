
##########
### Hatch ###
## limit at >= 10 eggs to increase sampling for older females
###
if(length(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=10)]) > 0) {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=10)]), value=as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=10)]), lay=as.numeric(WT_OreR_wMel$V13 [which(WT_OreR_wMel$V12>=10)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=10)])))} else {WT_OreR_wMel_hatch_full <- data.frame(group="WT_OreR_wMel", value=as.numeric(0), lay=as.numeric(WT_OreR_wMel$V13 [which(WT_OreR_wMel$V12>=10)]), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(WT_OreR_wMel$V16 [which(WT_OreR_wMel$V12>=10)])), age=as.numeric(WT_OreR_wMel$V5 [which(WT_OreR_wMel$V12>=10)]))}

if(length(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=10)]) > 0) {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=10)]), value=as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=10)]), lay=as.numeric(WT_OreR_uninf$V13 [which(WT_OreR_uninf$V12>=10)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=10)])))} else {WT_OreR_uninf_hatch_full <- data.frame(group="WT_OreR_uninf", value=as.numeric(0), lay=as.numeric(WT_OreR_uninf$V13 [which(WT_OreR_uninf$V12>=10)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_OreR_uninf$V16 [which(WT_OreR_uninf$V12>=10)])), age=as.numeric(WT_OreR_uninf$V5 [which(WT_OreR_uninf$V12>=10)]))}

if(length(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=10)]) > 0) {WT_F10_OreR_uninf_hatch_full <- data.frame(group="WT_F10_OreR_uninf", age=as.numeric(WT_F10_OreR_uninf$V5 [which(WT_F10_OreR_uninf$V12>=10)]), value=as.numeric(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=10)]), lay=as.numeric(WT_F10_OreR_uninf$V13 [which(WT_F10_OreR_uninf$V12>=10)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=10)])))} else {WT_F10_OreR_uninf_hatch_full <- data.frame(group="WT_F10_OreR_uninf", value=as.numeric(0), lay=as.numeric(WT_F10_OreR_uninf$V13 [which(WT_F10_OreR_uninf$V12>=10)]), color=rgb(0.7,0.7,0.7,0.7), samples=length(as.numeric(WT_F10_OreR_uninf$V16 [which(WT_F10_OreR_uninf$V12>=10)])), age=as.numeric(WT_F10_OreR_uninf$V5 [which(WT_F10_OreR_uninf$V12>=10)]))}

####
## remove rows with NAs (e.g., eggs laid, but not counted)
WT_OreR_wMel_hatch_noNA <- WT_OreR_wMel_hatch_full[complete.cases(WT_OreR_wMel_hatch_full), ]

####
## changing groups to factors for anova, GLM, etc (https://www.scribbr.com/statistics/anova-in-r/))
df_hatch <- data.frame(t=WT_OreR_wMel_hatch_noNA$age, y=WT_OreR_wMel_hatch_noNA$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=WT_OreR_uninf_hatch_full$age, y=WT_OreR_uninf_hatch_full$value, group=as.factor('uninfected')))

df_F10_hatch <- data.frame(t=WT_OreR_wMel_hatch_noNA$age, y=WT_OreR_wMel_hatch_noNA$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=WT_F10_OreR_uninf_hatch_full$age, y=WT_F10_OreR_uninf_hatch_full$value, group=as.factor('uninfected')))

################################################
## loess = local polynomial regression
pdf("WT_OreR_egg_hatch_vs_age_loess.pdf")
ggplot(df_hatch, aes(x=t, y=y, color=group)) + xlim(2,45) + ylim(0,100) +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected" = c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=10 eggs laid)") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = c(rgb(0.7,0.7,0.7,1))))
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
pdf("WT_OreR_egg_hatch_vs_age_boxplot.pdf")
ggplot(df_hatch, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  scale_color_manual(values = c("uninfected" = c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=10 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()

## above + plot all points
pdf("WT_OreR_egg_hatch_vs_age_boxplot+pts.pdf")
ggplot(df_hatch, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected" = c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=10 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve


###########
pdf("WT_F10_OreR_egg_hatch_vs_age_loess.pdf")
#needsmoredata#ggplot(df_F10_hatch, aes(x=t, y=y, color=group)) + ylim(0,100) +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected" = c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + theme_bw()  + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=10 eggs laid)") + theme(axis.text.x = element_text(angle = 90)) + scale_x_continuous(breaks=seq(from=0,to=70,by=10))
dev.off()

## above + plot all points
pdf("WT_F10_OreR_egg_hatch_vs_age_boxplot+pts.pdf")
ggplot(df_F10_hatch, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected" = c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=20 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve
