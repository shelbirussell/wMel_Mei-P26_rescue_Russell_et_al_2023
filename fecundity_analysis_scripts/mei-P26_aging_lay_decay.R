## change hatch NAs to 0s
meiP261_F_wMel$V16[is.na(meiP261_wMel$V16)] <- 0
meiP261_F_uninf$V16[is.na(meiP261_uninf$V16)] <- 0
meiP26RNAi_F_wMel$V16[is.na(meiP26RNAi_F_wMel$V16)] <- 0
meiP26RNAi_F_uninf$V16[is.na(meiP26RNAi_F_uninf$V16)] <- 0

meiP261_F_wMel_lay_full <- data.frame(group="meiP261_F_wMel", value=as.numeric(na.omit(meiP261_F_wMel$V13)), color=rgb(0.93,0.07,0.54,1), samples=length(as.numeric(na.omit(meiP261_F_wMel$V12))), age=meiP261_F_wMel$V5, hatch=as.numeric(meiP261_F_wMel$V16))
meiP261_F_uninf_lay_full <- data.frame(group="meiP261_F_uninf", value=as.numeric(na.omit(meiP261_F_uninf$V13)), color=rgb(0.933,0.635,0.678,1), samples=length(as.numeric(na.omit(meiP261_F_uninf$V12))), age=meiP261_F_uninf$V5, hatch=as.numeric(meiP261_F_uninf$V16))

meiP26RNAi_F_wMel_lay_full <- data.frame(group="meiP26RNAi_F_wMel", value=as.numeric(na.omit(meiP26RNAi_F_wMel$V13)), color=rgb(0.93,0.07,0.54,1), samples=length(as.numeric(na.omit(meiP26RNAi_F_wMel$V12))), age=meiP26RNAi_F_wMel$V5, hatch=as.numeric(meiP26RNAi_F_wMel$V16))
meiP26RNAi_F_uninf_lay_full <- data.frame(group="meiP26RNAi_F_uninf", value=as.numeric(na.omit(meiP26RNAi_F_uninf$V13)), color=rgb(0.933,0.635,0.678,1), samples=length(as.numeric(na.omit(meiP26RNAi_F_uninf$V12))), age=meiP26RNAi_F_uninf$V5, hatch=as.numeric(meiP26RNAi_F_uninf$V16))

######
meiP261_lay <- data.frame(t=meiP261_F_wMel_lay_full$age, y=meiP261_F_wMel_lay_full$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=meiP261_F_uninf_lay_full$age, y=meiP261_F_uninf_lay_full$value, group=as.factor('uninfected')))
meiP26RNAi_lay <- data.frame(t=meiP26RNAi_F_wMel_lay_full$age, y=meiP26RNAi_F_wMel_lay_full$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=meiP26RNAi_F_uninf_lay_full$age, y=meiP26RNAi_F_uninf_lay_full$value, group=as.factor('uninfected')))

##########################################################
#######
## Plot
#######
#######
## hypomorph
#####

## loess = local polynomial regression
pdf("mei-P26[1]_egg_lay_vs_age_loess.pdf")
ggplot(meiP261_lay, aes(x=t, y=y, color=group)) + ylim(0,100) + geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("eggs laid / female / day") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
## above + plot all points
pdf("mei-P26[1]_egg_lay_vs_age_boxplot+pts.pdf")
ggplot(meiP261_lay, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("eggs laid / female / day") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve

#######
## RNAi
######
## loess = local polynomial regression
## set span=1 for loess CI shading in regions of low sampling: https://stackoverflow.com/questions/70080627/missing-confidence-intervals-on-a-geom-smooth-function-with-double-y-graph
pdf("mei-P26RNAi_egg_lay_vs_age_loess-xlim.pdf")
ggplot(meiP26RNAi_lay, aes(x=t, y=y, color=group)) +  geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95, span=1) + theme_bw()  + xlab("female age (days post eclosion)") + ylab("eggs laid per day") + theme(axis.text.x = element_text(angle = 90)) + scale_x_continuous(breaks=seq(from=0,to=70,by=10)) + xlim(2,25) + ylim(0,100)
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
pdf("mei-P26RNAi_egg_lay_vs_age_boxplot.pdf")
ggplot(meiP26RNAi_lay, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + xlab("female age (days post eclosion)") + ylab("eggs laid per day") + theme(axis.text.x = element_text(angle = 90))
dev.off()

## above + plot all points
pdf("mei-P26RNAi_egg_lay_vs_age_boxplot+pts.pdf")
ggplot(meiP26RNAi_lay, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  + scale_color_manual(values = c("uninfected"=c(rgb(0.933,0.635,0.678,1)), "wMel"=c(rgb(0.93,0.07,0.54,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("eggs laid per day") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve

#############################################################
