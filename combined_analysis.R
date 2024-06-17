
####   MIXING HEIGHT ############################

A1<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_COFF.csv",header=TRUE,sep=",")
A2<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_EDA.csv",header=TRUE,sep=",")
A3<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_EDM.csv",header=TRUE,sep=",")
A4<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_FFDAS.csv",header=TRUE,sep=",")
A5<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_ODIAC_H.csv",header=TRUE,sep=",")
A6<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_COFF.csv",header=TRUE,sep=",")
A7<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_EDA.csv",header=TRUE,sep=",")
A8<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_EDM.csv",header=TRUE,sep=",")
A9<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_FFDAS.csv",header=TRUE,sep=",")
A10<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")

a<-9
a1<-A1[,a]
a2<-A2[,a]
a3<-A3[,a]
a4<-A4[,a]
a5<-A5[,a]
a6<-A6[,a]
a7<-A7[,a]
a8<-A8[,a]
a9<-A9[,a]
a10<-A10[,a]
mxht<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)

WRF<-a6
ECMWF<-a1
rm(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)

library(ggplot2)
library(reshape2)

df_a1<-data.frame(WRF,ECMWF)

k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 2)

for (j in 0:7){
  k2=k1+j
  a1<-df_a1[k2,]
  a2=colMeans(a1)
  c1[j+1,]=a2
}

b1=c1[,1]
b2=c1[,2]

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
df<-data.frame(time,b1,b2)
colnames(df)<-c("time","WRF","ECMWF")
s=0.8
# yl1=0
# yl2=30
p1<-ggplot(df,aes(x=1:8)) +
  geom_line(aes(y=WRF,color="WRF"),linetype="solid",size=s)+#ylim(yl1,yl2)+
  geom_line(aes(y=ECMWF,color="ECMWF"),linetype="solid",size=s)+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15))+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Mixing Height (m)")+xlab("Hours in a day")+
  ggtitle("Chennai_100m a.g.l (May 2017)")

rm(a1,c1,df,df_a1,mxht,a,a2,b1,b2,ECMWF,j,k1,k2,s,time,WRF)
#######################################################################################################

##### DIFFERENCE IN PPM #########################

a<-14
a1<-A1[,a]
a2<-A2[,a]
a3<-A3[,a]
a4<-A4[,a]
a5<-A5[,a]
a6<-A6[,a]
a7<-A7[,a]
a8<-A8[,a]
a9<-A9[,a]
a10<-A10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
COFF=a1-a6
EDA=a2-a7
EDM=a3-a8
FFDAS=a4-a9
ODIAC=a5-a10

library(ggplot2)
library(reshape2)
df_a1<-data.frame(COFF,EDA,EDM,FFDAS,ODIAC)
df_a=abs(df_a1)

k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 5)

for (j in 0:7){
  k2=k1+j
  a1<-df_a[k2,]
  a2=colMeans(a1)
  c1[j+1,]=a2
}

b1=c1[,1]
b2=c1[,2]
b3=c1[,3]
b4=c1[,4]
b5=c1[,5]
time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
df<-data.frame(time,b1,b2,b3,b4,b5)
colnames(df)<-c("time","COFFEE","EDA","EDM","FFDAS","ODIAC")
s=0.8
yl1=0
yl2=20
p2<-ggplot(df,aes(x=1:8)) +
  geom_line(aes(y=COFFEE,color="COFFEE"),linetype="solid",size=s)+ylim(yl1,yl2)+
  geom_line(aes(y=EDA,color="EDA"),linetype="solid",size=s)+
  geom_line(aes(y=EDM,color="EDM"),linetype="solid",size=s)+
  geom_line(aes(y=FFDAS,color="FFDAS"),linetype="solid",size=s)+
  geom_line(aes(y=ODIAC,color="ODIAC"),linetype="solid",size=s)+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15))+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Difference (ppm)")+xlab("Hours in a day")

rm(a1,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,c1,df,df_a,df_a1,ffm,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,
   b1,b2,b3,b4,b5,j,k1,k2,s,yl1,yl2)
########################################################################################################
##################### CORR ANALYSIS ###########################################################
a1<-read.table("/home/jithin/STILT/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_ERA5_intp_Uw.csv")
a2<-read.table("/home/jithin/STILT/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_ERA5_intp_Vw.csv")
a3<-read.table("/home/jithin/STILT/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_WRF_Uw.csv")
a4<-read.table("/home/jithin/STILT/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_WRF_Vw.csv")


# The data consist of 720 x 39 matrix. ie 24x30 hrs data for 39 levels (91 level ERA5 interpolated to 39 level (20 km) WRF data.)
# Step 1: Converting the data 24x39 matrix. ie averaging the whole month hourly data to diurnal data.
# Step 2: Finding the correlation of U wind and V wind between both meteorology diurnally.
###########################################     ERA5_intp_Uw   ###################################################################
k=1
d1=matrix(ncol = 39)
for (i in 1:24) {
  c1=matrix(ncol = 39)
  for (j in 1:30){
    b1=a1[k,]
    c1<-rbind(c1,b1)
    k=k+24
  }
  k=k-720
  c2=c1[2:31,]
  c3=colMeans(c2)
  d1<-rbind(d1,c3)
  k=k+1
}
ERA5_intp_Uw=d1[2:25,]
rm(b1,c1,c2,i,j,k,c3,d1)


######################################################     ERA5_intp_Vw   ####################################################

k=1
d1=matrix(ncol = 39)
for (i in 1:24) {
  c1=matrix(ncol = 39)
  for (j in 1:30){
    b1=a2[k,]
    c1<-rbind(c1,b1)
    k=k+24
  }
  k=k-720
  c2=c1[2:31,]
  c3=colMeans(c2)
  d1<-rbind(d1,c3)
  k=k+1
}
ERA5_intp_Vw=d1[2:25,]
rm(b1,c1,c2,i,j,k,c3,d1)


######################################################     WRF_Uw  #############################################################

k=1
d1=matrix(ncol = 39)
for (i in 1:24) {
  c1=matrix(ncol = 39)
  for (j in 1:30){
    b1=a3[k,]
    c1<-rbind(c1,b1)
    k=k+24
  }
  k=k-720
  c2=c1[2:31,]
  c3=colMeans(c2)
  d1<-rbind(d1,c3)
  k=k+1
}
WRF_Uw=d1[2:25,]
rm(b1,c1,c2,i,j,k,c3,d1)


######################################################     WRF_Vw  ###############################################################

k=1
d1=matrix(ncol = 39)
for (i in 1:24) {
  c1=matrix(ncol = 39)
  for (j in 1:30){
    b1=a4[k,]
    c1<-rbind(c1,b1)
    k=k+24
  }
  k=k-720
  c2=c1[2:31,]
  c3=colMeans(c2)
  d1<-rbind(d1,c3)
  k=k+1
}
WRF_Vw=d1[2:25,]
rm(b1,c1,c2,i,j,k,c3,d1)

#########################################             Corr. U wind             ########################################################
library("ggpubr")
c1=matrix(nrow = 24)
for (i in 1:24){
  a1=WRF_Uw[i,]
  a2=ERA5_intp_Uw[i,]
  b1=cor(a1,a2)
  c1[i,]=b1
  rm(a1,a2,b1)
}
rm(i)
########################################              Corr. V wind             #########################################################
c2=matrix(nrow = 24)
for (i in 1:24){
  a1=WRF_Vw[i,]
  a2=ERA5_intp_Vw[i,]
  b1=cor(a1,a2)
  c2[i,]=b1
  rm(a1,a2,b1)
}
rm(i)
######################################################################################################################################
time=c("05:30","06:30","07:30","08:30","09:30","10:30","11:30","12:30","13:30","14:30","15:30","16:30","17:30","18:30","19:30",
       "20:30","21:30","22:30","23:30","00:30","01:30","02:30","03:30","04:30")
df<-data.frame(1:24,c1,c2)
s=0.8
library(ggplot2)
p3<-ggplot(df,aes(x=1:24))+
  geom_line(aes(y=c1,color="U_Wind"),linetype="solid",size=s)+ylim(0.85,1)+xlim(0,24)+
  geom_line(aes(y=c2,color="V_Wind"),linetype="solid",size=s)+
  ggtitle("Correlation b/w ERA5 and WRF Meteorology (Chennai)")+
  xlab("Daily Hours") +
  ylab("Correlation")+
  scale_color_discrete(name = "Lines", labels = c("U_Wind","V_Wind"))+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15))+
  scale_x_continuous(breaks=1:24,labels=time)
#
######################################################################################################
library(gtable)
library(gridExtra)
grid.arrange(p3,p1,p2,nrow=3,ncol=1)
