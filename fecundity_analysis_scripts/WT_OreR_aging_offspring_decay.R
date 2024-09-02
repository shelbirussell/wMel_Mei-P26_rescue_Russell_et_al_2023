
#######
### offspring/day

WT_OreR_wMel_offspring_full <- data.frame(group="WT_OreR_wMel", age=as.numeric(WT_OreR_wMel$V5), value=as.numeric(WT_OreR_wMel$V17), color=rgb(0.3,0.3,0.3,1), samples=length(as.numeric(WT_OreR_wMel$V17)))
WT_OreR_uninf_offspring_full <- data.frame(group="WT_OreR_uninf", age=as.numeric(WT_OreR_uninf$V5), value=as.numeric(WT_OreR_uninf$V17), color=rgb(0.7,0.7,0.7,1), samples=length(as.numeric(WT_OreR_uninf$V17)))
WT_F10_OreR_uninf_offspring_full <- data.frame(group="WT_F10_OreR_uninf", age=as.numeric(WT_F10_OreR_uninf$V5), value=as.numeric(WT_F10_OreR_uninf$V17), color=rgb(0.7,0.7,0.7,1), samples=length(as.numeric(WT_F10_OreR_uninf$V17)))

df_offspring <- data.frame(t=WT_OreR_wMel_offspring_full$age, y=WT_OreR_wMel_offspring_full$value, group=as.factor('wMel')) %>% rbind(., data.frame(t=WT_OreR_uninf_offspring_full$age, y=WT_OreR_uninf_offspring_full$value, group=as.factor('uninfected')))


## loess = local polynomial regression
pdf("WT_OreR_offspring_vs_age_loess.pdf")
ggplot(df_offspring, aes(x=t, y=y, color=group)) + xlim(2,45) + ylim(0,100) +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected" =c(rgb(0.7,0.7,0.7,1)), "wMel"=c(rgb(0.3,0.3,0.3,1)))) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19)) + stat_smooth(method="loess", formula=y~x, level=0.95) + xlab("female age (days post eclosion)") + ylab("offspring/female/day") + theme_bw() + theme(axis.text.x = element_text(angle = 90), panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
dev.off()

## above + plot all points
pdf("WT_OreR_offspring_vs_age_boxplot+pts.pdf")
ggplot(df_offspring, aes(x=factor(t), y=y, color=group)) + ylim(0,100) + geom_boxplot() + theme_bw() +  geom_point(aes(shape=group))  +  scale_color_manual(values = c("uninfected" = "black", "wMel"="magenta")) +  scale_shape_manual(values = c("uninfected"=6, "wMel"=19))  + xlab("female age (days post eclosion)") + ylab("% eggs hatched (>=10 eggs laid)") + theme(axis.text.x = element_text(angle = 90))
dev.off()
## loess doesn't work when t is a factor ... can't combine boxplots and loess curve
