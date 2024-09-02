## change hatch NAs to 0s
WT_OreR_wMel$V16[is.na(WT_OreR_wMel$V16)] <- 0
WT_OreR_uninf$V16[is.na(WT_OreR_uninf$V16)] <- 0
WT_F10_OreR_uninf$V16[is.na(WT_F10_OreR_uninf$V16)] <- 0

### Lay ###
WT_OreR_wMel_lay <- data.frame(group="WT_OreR_wMel", value=as.numeric(na.omit(WT_OreR_wMel$V13)), color=rgb(0.3,0.3,0.3,1), samples=length(as.numeric(na.omit(WT_OreR_wMel$V12))), age=WT_OreR_wMel$V5, hatch=as.numeric(na.omit(WT_OreR_wMel$V16)))
WT_OreR_uninf_lay <- data.frame(group="WT_OreR_uninf", value=as.numeric(na.omit(WT_OreR_uninf$V13)), color=rgb(0.7,0.7,0.7,1), samples=length(as.numeric(na.omit(WT_OreR_uninf$V12))), age=WT_OreR_uninf$V5, hatch=as.numeric(na.omit(WT_OreR_uninf$V16)))
WT_F10_OreR_uninf_lay <- data.frame(group="WT_F10_OreR_uninf", value=as.numeric(na.omit(WT_F10_OreR_uninf$V13)), color=rgb(0.7,0.7,0.7,1), samples=length(as.numeric(na.omit(WT_F10_OreR_uninf$V12))), age=WT_F10_OreR_uninf$V5, hatch=as.numeric(na.omit(WT_F10_OreR_uninf$V16)))

## changing groups to factors for anova (https://www.scribbr.com/statistics/anova-in-r/))
df <- data.frame(t=WT_OreR_wMel_lay$age, y=WT_OreR_wMel_lay$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=WT_OreR_uninf_lay$age, y=WT_OreR_uninf_lay$value, group=as.factor('uninfected')))
df_F10 <- data.frame(t=WT_OreR_wMel_lay$age, y=WT_OreR_wMel_lay$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=WT_F10_OreR_uninf_lay$age, y=WT_F10_OreR_uninf_lay$value, group=as.factor('uninfected')))
####
#############

## loess = local polynomial regression
pdf("WT_OreR_egg_lay_vs_age_loess.pdf")
ggplot(df, aes(x=t, y=y, color=group)) + xlim(2,45) + ylim(0,100) +  geom_point(aes(shape=group)) + scale_color_manual(values = c("uninfected"=c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("eggs laid / female / day") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = rgb(0.7,0.7,0.7,1)))
dev.off()

## box plots for each age, separated by infection status - must convert ages to factors to produce discrete box plots: https://stackoverflow.com/questions/60586810/ggplot2-grouped-boxplot-doesnt-separate-groups-for-different-timepoints
pdf("WT_OreR_egg_lay_vs_age_boxplot.pdf")
ggplot(df, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  scale_color_manual(values = c("uninfected"=c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + xlab("female age (days post eclosion)") + ylab("eggs laid \ female \ day") + theme(axis.text.x = element_text(angle = 90))
dev.off()

## above + plot all points
pdf("WT_OreR_egg_lay_vs_age_boxplot+pts.pdf")
ggplot(df, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected"=c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("eggs laid / female / day") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve

###########


ggplot(df_F10, aes(x=t, y=y, color=group)) + ylim(0,100) +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected"=c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + theme_bw() + xlab("female age (days post eclosion)") + ylab("eggs laid \ female \ day") + theme(axis.text.x = element_text(angle = 90)) + scale_x_continuous(breaks=seq(from=0,to=70,by=10))
