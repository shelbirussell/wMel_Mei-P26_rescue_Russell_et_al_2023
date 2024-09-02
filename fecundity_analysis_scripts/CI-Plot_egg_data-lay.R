


WT_OreR_wMel_recip_lay_full <- data.frame(group="WT_OreR_wMel_recip", value=as.numeric((WT_OreR_wMel_recip$V13)), color=rgb(0.3,0.3,0.3,0.7), samples=length(as.numeric(na.omit(WT_OreR_wMel_recip$V13))), age=WT_OreR_wMel_recip$V5)
WT_OreR_wMel_recip_lay <- subset(subset(WT_OreR_wMel_recip_lay_full, age <=7, select=c(group, value, color, samples, age)), age >2, select=c(group, value, color, samples, age))
