
library(ncdf4)
library(ggplot2)
library(reshape2)
gr_sz = 0.2
lin_sz = 1.3

#x1 <- expression(Band~width~(0.1^0 ~ east~to~west))
#y1 <- expression(micromoles ~ m^-2 ~ s^-1)
x1 <- c("")
y1 <- expression(micromoles ~ m^-2 ~ s^-1)

atit=20
atxt=20
ptit=25
alp =0.3

########################################################### Chennai ############################################################################

nc_edgar <- nc_open("/media/jithin/disk1/jithin/Data_Comparison/flux_data/EDA/v50_CO2_excl_short-cycle_org_C_2017.0.1x0.1.nc")
lon<-ncvar_get(nc_edgar,"lon")
lat<-ncvar_get(nc_edgar,"lat")
co2<-ncvar_get(nc_edgar,"emi_co2")
co2<-t(co2)
co2=co2*1E9/44
lon1=10*77.77
lon2=10*82.77
lat1=900+(10*12.98)
lat2=900+(10*13.18)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
EDGAR=colMeans(xco2)

nc_ffdas <- nc_open("/media/jithin/disk1/jithin/Data_Comparison/flux_data/FFDAS/indiaffdas.nc")
lon<-ncvar_get(nc_ffdas,"LONGITUDE")
lat<-ncvar_get(nc_ffdas,"LATITUDE")
co2<-ncvar_get(nc_ffdas,"FFDAS")
co2<-t(co2)
co2=co2*0.9645
lon1=10*17.77
lon2=10*22.77
lat1=10*12.98
lat2=10*13.18
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
FFDAS=colMeans(xco2)

nc_odiac <- nc_open("/media/jithin/disk1/jithin/Data_Comparison/flux_data/odiac/1km_test.nc")
lon<-ncvar_get(nc_odiac,"LON")
lat<-ncvar_get(nc_odiac,"LAT")
co2<-ncvar_get(nc_odiac,"emission")
co2<-t(co2)
co2=co2*0.9641/31
lon1=1800+(10*77.77)
lon2=1800+(10*82.77)
lat1=900+(10*12.98)
lat2 <- 900 + (10 * 13.18)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
ODIAC=colMeans(xco2)

nc_coff <- nc_open("/media/jithin/disk1/jithin/Data_Comparison/flux_data/COFFEE/coff_monthly_avg_052017.nc")
lon <- ncvar_get(nc_coff, "lon")
lat <- ncvar_get(nc_coff, "lat")
co2 <- ncvar_get(nc_coff, "emission")
co2<-t(co2)
lon1=10*77.77
lon2=10*82.77
lat1=900+(10*12.98)
lat2=900+(10*13.18)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
COFFEE=colMeans(xco2)

lons <- 78
lone <- 83

xt  <- seq(from = lons, to = lone, by = 1)
xt2 <- paste0(xt, intToUtf8(176))
xt3 <- paste0(xt2, " E")


df<-data.frame(1:51,EDGAR,FFDAS,ODIAC,COFFEE)
colnames(df) <- c("ID", "EDGAR", "FFDAS", "ODIAC", "COFFEE")
df_t <- melt(df, id = 'ID')
l=seq(77.77,82.77,0.1)
l1 = rep(l, times = 4)
p1 <- ggplot() +
geom_line(data = df_t, aes(x= l1, y = value, color = variable), size = lin_sz) +
annotate("rect", xmin = 80.08, xmax = 80.32, ymin = 0, ymax = 35, alpha = alp) +
  ggtitle("Chennai") +
  theme_classic() +
  xlab(x1) +
  ylab(y1) +
  scale_x_continuous(breaks = seq(from = lons, to = lone, by = 1),
        labels = xt3) +
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt, colour = 'black'),legend.position="none",plot.title = element_text(size = ptit, face = "bold"),panel.grid.major = element_line(color = "black",size = gr_sz,linetype = 2))


# ################################################################ Mumbai ##############################################################################


lon<-ncvar_get(nc_edgar,"lon")
lat<-ncvar_get(nc_edgar,"lat")
co2<-ncvar_get(nc_edgar,"emi_co2")
co2<-t(co2)
co2=co2*1E9/44
lon1=10*70.37
lon2=10*75.37
lat1=900+(10*19)
lat2=900+(10*19.2)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
EDGAR=colMeans(xco2)


lon<-ncvar_get(nc_ffdas,"LONGITUDE")
lat<-ncvar_get(nc_ffdas,"LATITUDE")
co2<-ncvar_get(nc_ffdas,"FFDAS")
co2<-t(co2)
co2=co2*0.9645
lon1=10*10.37
lon2=10*15.37
lat1=10*19
lat2=10*19.2
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
FFDAS=colMeans(xco2)


lon<-ncvar_get(nc_odiac,"LON")
lat<-ncvar_get(nc_odiac,"LAT")
co2<-ncvar_get(nc_odiac,"emission")
co2<-t(co2)
co2=co2*0.9641/31
lon1=1800+(10*70.37)
lon2=1800+(10*75.37)
lat1=900+(10*19)
lat2=900+(10*19.2)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
ODIAC=colMeans(xco2)


lon<-ncvar_get(nc_coff,"lon")
lat<-ncvar_get(nc_coff,"lat")
co2<-ncvar_get(nc_coff,"emission")
co2<-t(co2)
lon1=10*70.37
lon2=10*75.37
lat1=900+(10*19)
lat2=900+(10*19.2)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
COFFEE=colMeans(xco2)

lons <- 71
lone <- 75

xt  <- seq(from = lons, to = lone, by = 1)
xt2 <- paste0(xt, intToUtf8(176))
xt3 <- paste0(xt2, " E")


df<-data.frame(1:51,EDGAR,FFDAS,ODIAC,COFFEE)
colnames(df) <- c("ID", "EDGAR", "FFDAS", "ODIAC", "COFFEE")
df_t <- melt(df, id = 'ID')
l=seq(70.37, 75.37, 0.1)
l2 = rep(l, times = 4)
p2 <- ggplot() +
geom_line(data = df_t, aes(x= l2, y = value, color = variable), size = lin_sz) +
annotate("rect", xmin = 72.80, xmax = 72.98, ymin = 0, ymax = 65, alpha = alp) +
  ggtitle("Mumbai") +
  theme_classic() +
  xlab(x1) +
  ylab(y1)+
  scale_x_continuous(breaks = seq(from = lons, to = lone, by = 1),
        labels = xt3) +
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt, colour = 'black'),legend.position="none",plot.title = element_text(size = ptit, face = "bold"),panel.grid.major = element_line(color = "black",size = gr_sz,linetype = 2))


# ######################################################################### Delhi ####################################################################



lon<-ncvar_get(nc_edgar,"lon")
lat<-ncvar_get(nc_edgar,"lat")
co2<-ncvar_get(nc_edgar,"emi_co2")
co2<-t(co2)
co2=co2*1E9/44
lon1=10*74.6
lon2=10*79.6
lat1=900+(10*28.60)
lat2=900+(10*28.80)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
EDGAR=colMeans(xco2)


lon<-ncvar_get(nc_ffdas,"LONGITUDE")
lat<-ncvar_get(nc_ffdas,"LATITUDE")
co2<-ncvar_get(nc_ffdas,"FFDAS")
co2<-t(co2)
co2=co2*0.9645
lon1=10*14.6
lon2=10*19.6
lat1=10*28.60
lat2=10*28.80
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
FFDAS=colMeans(xco2)


lon<-ncvar_get(nc_odiac,"LON")
lat<-ncvar_get(nc_odiac,"LAT")
co2<-ncvar_get(nc_odiac,"emission")
co2<-t(co2)
co2=co2*0.9641/31
lon1=1800+(10*74.6)
lon2=1800+(10*79.6)
lat1=900+(10*28.60)
lat2=900+(10*28.80)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
ODIAC=colMeans(xco2)


lon<-ncvar_get(nc_coff,"lon")
lat<-ncvar_get(nc_coff,"lat")
co2<-ncvar_get(nc_coff,"emission")
co2<-t(co2)
lon1=10*74.6
lon2=10*79.6
lat1=900+(10*28.60)
lat2=900+(10*28.80)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
COFFEE=colMeans(xco2)

lons <- 75
lone <- 79

xt  <- seq(from = lons, to = lone, by = 1)
xt2 <- paste0(xt, intToUtf8(176))
xt3 <- paste0(xt2, " E")


df<-data.frame(1:51,EDGAR,FFDAS,ODIAC,COFFEE)
colnames(df) <- c("ID", "EDGAR", "FFDAS", "ODIAC", "COFFEE")
df_t <- melt(df, id = 'ID')
l=seq(74.6, 79.6, 0.1)
l3 = rep(l, times = 4)
p3 <- ggplot() +
geom_line(data = df_t, aes(x= l3, y = value, color = variable), size = lin_sz) +
annotate("rect", xmin = 76.83, xmax = 77.34, ymin = 0, ymax = 55, alpha = alp) +
  ggtitle("Delhi") +
  theme_classic() +
  xlab(x1) +
  ylab(y1)+
  scale_x_continuous(breaks = seq(from = lons, to = lone, by = 1),
        labels = xt3) +
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt, colour = 'black'),legend.position="none",plot.title = element_text(size = ptit, face = "bold"),panel.grid.major = element_line(color = "black",size = gr_sz,linetype = 2))

# ####################################################################### Kolkata ###################################################################



lon<-ncvar_get(nc_edgar,"lon")
lat<-ncvar_get(nc_edgar,"lat")
co2<-ncvar_get(nc_edgar,"emi_co2")
co2<-t(co2)
co2=co2*1E9/44
lon1=10*85.86
lon2=10*90.86
lat1=900+(10*22.47)
lat2=900+(10*22.67)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
EDGAR=colMeans(xco2)


lon<-ncvar_get(nc_ffdas,"LONGITUDE")
lat<-ncvar_get(nc_ffdas,"LATITUDE")
co2<-ncvar_get(nc_ffdas,"FFDAS")
co2<-t(co2)
co2=co2*0.9645
lon1=10*25.86
lon2=10*30.86
lat1=10*22.47
lat2=10*22.67
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
FFDAS=colMeans(xco2)


lon<-ncvar_get(nc_odiac,"LON")
lat<-ncvar_get(nc_odiac,"LAT")
co2<-ncvar_get(nc_odiac,"emission")
co2<-t(co2)
co2=co2*0.9641/31
lon1=1800+(10*85.86)
lon2=1800+(10*90.86)
lat1=900+(10*22.47)
lat2=900+(10*22.67)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
ODIAC=colMeans(xco2)


lon<-ncvar_get(nc_coff,"lon")
lat<-ncvar_get(nc_coff,"lat")
co2<-ncvar_get(nc_coff,"emission")
co2<-t(co2)
lon1=10*85.86
lon2=10*90.86
lat1=900+(10*22.47)
lat2=900+(10*22.67)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
COFFEE=colMeans(xco2)

lons <- 86
lone <- 91

xt  <- seq(from = lons, to = lone, by = 1)
xt2 <- paste0(xt, intToUtf8(176))
xt3 <- paste0(xt2, " E")


df<-data.frame(1:51,EDGAR,FFDAS,ODIAC,COFFEE)
colnames(df) <- c("ID", "EDGAR", "FFDAS", "ODIAC", "COFFEE")
df_t <- melt(df, id = 'ID')
l=seq(85.86, 90.86, 0.1)
l4 = rep(l, times = 4)
p4 <- ggplot() +
geom_line(data = df_t, aes(x= l4, y = value, color = variable), size = lin_sz) +
annotate("rect", xmin = 88.12, xmax = 88.52, ymin = 0, ymax = 65, alpha = alp) +
  ggtitle("Kolkata") +
  theme_classic() +
  xlab(x1) +
  ylab(y1)+
  scale_x_continuous(breaks = seq(from = lons, to = lone, by = 1),
        labels = xt3) +
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt, colour = 'black'),legend.position="none",plot.title = element_text(size = ptit, face = "bold"),panel.grid.major = element_line(color = "black",size = gr_sz,linetype = 2))

# ########################################################### Banglore #################################################################################



lon<-ncvar_get(nc_edgar,"lon")
lat<-ncvar_get(nc_edgar,"lat")
co2<-ncvar_get(nc_edgar,"emi_co2")
co2<-t(co2)
co2=co2*1E9/44
lon1=10*75.1
lon2=10*80.1
lat1=900+(10*12.87)
lat2=900+(10*13.07)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
EDGAR=colMeans(xco2)


lon<-ncvar_get(nc_ffdas,"LONGITUDE")
lat<-ncvar_get(nc_ffdas,"LATITUDE")
co2<-ncvar_get(nc_ffdas,"FFDAS")
co2<-t(co2)
co2=co2*0.9645
lon1=10*15.09
lon2=10*20.09
lat1=10*12.87
lat2=10*13.07
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
FFDAS=colMeans(xco2)


lon<-ncvar_get(nc_odiac,"LON")
lat<-ncvar_get(nc_odiac,"LAT")
co2<-ncvar_get(nc_odiac,"emission")
co2<-t(co2)
co2=co2*0.9641/31
lon1=1800+(10*75.1)
lon2=1800+(10*80.1)
lat1=900+(10*12.87)
lat2=900+(10*13.07)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
ODIAC=colMeans(xco2)


lon<-ncvar_get(nc_coff,"lon")
lat<-ncvar_get(nc_coff,"lat")
co2<-ncvar_get(nc_coff,"emission")
co2<-t(co2)
lon1=10*75.1
lon2=10*80.1
lat1=900+(10*12.87)
lat2=900+(10*13.07)
xco2=co2[c(lat2:lat1),c(lon1:lon2)]
COFFEE=colMeans(xco2)

lons <- 75
lone <- 80

xt  <- seq(from = lons, to = lone, by = 1)
xt2 <- paste0(xt, intToUtf8(176))
xt3 <- paste0(xt2, " E")


df<-data.frame(1:51,EDGAR,FFDAS,ODIAC,COFFEE)
colnames(df) <- c("ID", "EDA", "FFDAS", "ODIAC", "ICOS")
df_t <- melt(df, id = 'ID')
l=seq(75.1,80.1,0.1)
l5 = rep(l, times = 4)
p5 <- ggplot() +
geom_line(data = df_t, aes(x= l5, y = value, color = variable), size = lin_sz) +
annotate("rect", xmin = 77.39, xmax = 77.86, ymin = 0, ymax = 16, alpha = alp) +
  ggtitle("Bengaluru") +
  theme_classic() +
  xlab(x1) +
  ylab(y1)+
  scale_x_continuous(breaks = seq(from = lons, to = lone, by = 1),
        labels = xt3) +
   theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt, colour = 'black'),
        plot.title = element_text(size = ptit, face = "bold"),legend.key.height  = unit(2,'cm'),
        legend.key.width = unit(4,'cm'),legend.title = element_text(size = 20),
        legend.text = element_text(size = 20),panel.grid.major = element_line(color = "black",size = gr_sz,linetype = 2))

legend<-get_legend(p5+guides(color=guide_legend(ncol=1))+
                     theme(legend.position="bottom",legend.title=element_blank()))
p5<-p5+theme(legend.position = 'null')

library(cowplot)
library(rlang)
library(patchwork)

 p<-plot_grid(p1,p2,p3,p4,p5,legend, ncol = 2,nrow=3, align = 'vh',
              labels=c("(a)","(b)","(c)","(d)","(e)"),label_size = 25)
# 
# 
ggsave("test2.jpeg", plot = p, scale = 1, path = "/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/flux_analysis/",
width = 12, height = 16, dpi = 600, bg ="white")