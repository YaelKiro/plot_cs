# plot_cs
plotting cross sections of chemical data in groundwaters
example of how to run the code

load data
var=Sr
cor=cor
xx=[0:0.1:12]
yy=[0:0.01:1.75]
p_size=[400 60 1]
levels=100
sing=1

interp_dat=plot_cs_chem(var,cor,xx,yy,p_size,levels,sing) - save the interpolated data in interp_dat

plot_cs_chem(var,cor,xx,yy,p_size,levels,sing) - just plot
