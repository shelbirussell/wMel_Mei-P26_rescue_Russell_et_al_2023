
#######
### offspring/day $V17

meiP261_F_wMel_offspring_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(meiP261_F_wMel$V17), color=rgb(0.93,0.07,0.54,1), samples=length(as.numeric(na.omit(meiP261_F_wMel$V12))), age=meiP261_F_wMel$V5)
meiP261_F_uninf_offspring_full <- data.frame(group="meiP261_F_uninf", value=as.numeric(meiP261_F_uninf$V17), color=rgb(0.933,0.635,0.678,1), samples=length(as.numeric(na.omit(meiP261_F_uninf$V12))), age=meiP261_F_uninf$V5)

meiP26RNAi_F_wMel_offspring_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(meiP26RNAi_F_wMel$V17), color=rgb(0.93,0.07,0.54,1), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V12))), age=meiP26RNAi_F_wMel$V5)
meiP26RNAi_F_uninf_offspring_full <- data.frame(group="meiP26RNAi_F_uninf", value=as.numeric(meiP26RNAi_F_uninf$V17), color=rgb(0.933,0.635,0.678,1), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V12))), age=meiP26RNAi_F_uninf$V5)

################
### bind data
meiP261_offspring <- data.frame(t=meiP261_F_wMel_offspring_full$age, y=meiP261_F_wMel_offspring_full$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=meiP261_F_uninf_offspring_full$age, y=meiP261_F_uninf_offspring_full$value, group=as.factor('uninfected')))
meiP26RNAi_offspring <- data.frame(t=meiP26RNAi_F_wMel_offspring_full$age, y=meiP26RNAi_F_wMel_offspring_full$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=meiP26RNAi_F_uninf_offspring_full$age, y=meiP26RNAi_F_uninf_offspring_full$value, group=as.factor('uninfected')))

##########################################################
#######
## Plot
#######
#######
## hypomorph
#####

## loess = local polynomial regression
pdf("mei-P26[1]_offspring_vs_age_loess-xlim.pdf")
ggplot(meiP261_offspring, aes(x=t, y=y, color=group)) + xlim(3,23) + ylim(0,60) + geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("# offspring / female / day") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
dev.off()

pdf("mei-P26[1]_offspring_vs_age_loess.pdf")
ggplot(meiP261_offspring, aes(x=t, y=y, color=group)) + ylim(0,100) + geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("# offspring / female / day") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
## above + plot all points
pdf("mei-P26[1]_offspring_vs_age_boxplot+pts.pdf")
ggplot(meiP261_offspring, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("# offspring / female / day") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve

#######
## RNAi
######
## loess = local polynomial regression
pdf("mei-P26RNAi_egg_offspring_vs_age_loess.pdf")
ggplot(meiP26RNAi_offspring, aes(x=t, y=y, color=group)) + xlim(2,25) + ylim(0,100) +  geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("# offspring / female / day") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
pdf("mei-P26RNAi_egg_offspring_vs_age_boxplot.pdf")
ggplot(meiP26RNAi_offspring, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + xlab("female age (days post eclosion)") + ylab("# offspring per day") + theme(axis.text.x = element_text(angle = 90))
dev.off()

## above + plot all points
pdf("mei-P26RNAi_egg_offspring_vs_age_boxplot+pts.pdf")
ggplot(meiP26RNAi_offspring, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("# offspring per day") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve

#############################################################
