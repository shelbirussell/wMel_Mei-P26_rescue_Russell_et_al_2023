###########
### hatch
###########

###WT hatch

df_hatch_split <- split(df_hatch, df_hatch$group)

ks.test(df_hatch_split$wMel$y, df_hatch_split$uninfected$y)
> ks.test(df_hatch_split$wMel$y, df_hatch_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  df_hatch_split$wMel$y and df_hatch_split$uninfected$y
D = 0.23668, p-value = 7.062e-09
alternative hypothesis: two-sided

Warning message:
In ks.test(df_hatch_split$wMel$y, df_hatch_split$uninfected$y) :
  p-value will be approximate in the presence of ties


##############
### mei-P26[1] hatch
meiP261_hatch_split <- split(meiP261_hatch, meiP261_hatch$group)
ks.test(meiP261_hatch_split$wMel$y, meiP261_hatch_split$uninfected$y)
> ks.test(meiP261_hatch_split$wMel$y, meiP261_hatch_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  meiP261_hatch_split$wMel$y and meiP261_hatch_split$uninfected$y
D = 0.35556, p-value = 6.361e-05
alternative hypothesis: two-sided

Warning message:
In ks.test(meiP261_hatch_split$wMel$y, meiP261_hatch_split$uninfected$y) :
  cannot compute exact p-value with ties



### mei-P26RNAi hatch
meiP26RNAi_hatch_split <- split(meiP26RNAi_hatch, meiP26RNAi_hatch$group)
ks.test(meiP26RNAi_hatch_split$wMel$y, meiP26RNAi_hatch_split$uninfected$y)
> ks.test(meiP26RNAi_hatch_split$wMel$y, meiP26RNAi_hatch_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  meiP26RNAi_hatch_split$wMel$y and meiP26RNAi_hatch_split$uninfected$y
D = 0.62, p-value = 1.484e-11
alternative hypothesis: two-sided

Warning message:
In ks.test(meiP26RNAi_hatch_split$wMel$y, meiP26RNAi_hatch_split$uninfected$y) :
  cannot compute exact p-value with ties
>

#############
############
## Lay
############
df_lay_split <- split(df, df$group)
ks.test(df_lay_split$wMel$y, df_lay_split$uninfected$y)
> df_lay_split <- split(df, df$group)
> ks.test(df_lay_split$wMel$y, df_lay_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  df_lay_split$wMel$y and df_lay_split$uninfected$y
D = 0.078946, p-value = 0.0784
alternative hypothesis: two-sided

Warning message:
In ks.test(df_lay_split$wMel$y, df_lay_split$uninfected$y) :
  p-value will be approximate in the presence of ties


##
meiP261_lay_split <- split(meiP261_lay, meiP261_lay$group)
ks.test(meiP261_lay_split$wMel$y, meiP261_lay_split$uninfected$y)
> ks.test(meiP261_lay_split$wMel$y, meiP261_lay_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  meiP261_lay_split$wMel$y and meiP261_lay_split$uninfected$y
D = 0.14723, p-value = 0.03412
alternative hypothesis: two-sided

Warning message:
In ks.test(meiP261_lay_split$wMel$y, meiP261_lay_split$uninfected$y) :
  p-value will be approximate in the presence of ties



meiP26RNAi_lay_split <- split(meiP26RNAi_lay, meiP26RNAi_lay$group)
ks.test(meiP26RNAi_lay_split$wMel$y, meiP26RNAi_lay_split$uninfected$y)
> ks.test(meiP26RNAi_lay_split$wMel$y, meiP26RNAi_lay_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  meiP26RNAi_lay_split$wMel$y and meiP26RNAi_lay_split$uninfected$y
D = 0.34227, p-value = 5.915e-06
alternative hypothesis: two-sided

Warning message:
In ks.test(meiP26RNAi_lay_split$wMel$y, meiP26RNAi_lay_split$uninfected$y) :
  p-value will be approximate in the presence of ties

###########
### offspring
###########

df_offspring_split <- split(df_offspring, df_offspring$group)
ks.test(df_offspring_split$wMel$y, df_offspring_split$uninfected$y)
> ks.test(df_offspring_split$wMel$y, df_offspring_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  df_offspring_split$wMel$y and df_offspring_split$uninfected$y
D = 0.087907, p-value = 0.06023
alternative hypothesis: two-sided

Warning message:
In ks.test(df_offspring_split$wMel$y, df_offspring_split$uninfected$y) :
  p-value will be approximate in the presence of ties


###

meiP261_offspring_split <- split(meiP261_offspring, meiP261_offspring$group)
ks.test(meiP261_offspring_split$wMel$y, meiP261_offspring_split$uninfected$y)
> meiP261_offspring_split <- split(meiP261_offspring, meiP261_offspring$group)
> ks.test(meiP261_offspring_split$wMel$y, meiP261_offspring_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  meiP261_offspring_split$wMel$y and meiP261_offspring_split$uninfected$y
D = 0.27128, p-value = 0.000118
alternative hypothesis: two-sided

Warning message:
In ks.test(meiP261_offspring_split$wMel$y, meiP261_offspring_split$uninfected$y) :
  p-value will be approximate in the presence of ties


meiP26RNAi_offspring_split <- split(meiP26RNAi_offspring, meiP26RNAi_offspring$group)
ks.test(meiP26RNAi_offspring_split$wMel$y, meiP26RNAi_offspring_split$uninfected$y)
> ks.test(meiP26RNAi_offspring_split$wMel$y, meiP26RNAi_offspring_split$uninfected$y)

	Two-sample Kolmogorov-Smirnov test

data:  meiP26RNAi_offspring_split$wMel$y and meiP26RNAi_offspring_split$uninfected$y
D = 0.45067, p-value = 3.874e-08
alternative hypothesis: two-sided

Warning message:
In ks.test(meiP26RNAi_offspring_split$wMel$y, meiP26RNAi_offspring_split$uninfected$y) :
  cannot compute exact p-value with ties
