library(ggplot2)
library(reshape2)
time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8

###################################################  chennai ################################################################

a1<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/chennai_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_chennai<-data.frame(c1)
colnames(ffm_chennai)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  banglore ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_banglore<-data.frame(c1)
colnames(ffm_banglore)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  cape ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/cape_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_cape<-data.frame(c1)
colnames(ffm_cape)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")



rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  delhi ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_delhi<-data.frame(c1)
colnames(ffm_delhi)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")


rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  hanle ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/hanle_20/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_hanle<-data.frame(c1)
colnames(ffm_hanle)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")


rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  kharagpur ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/kharagpur_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_kharagpur<-data.frame(c1)
colnames(ffm_kharagpur)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")


rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  kodai ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/kodai_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_kodai<-data.frame(c1)
colnames(ffm_kodai)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")


rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  kolkata ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_kolkata<-data.frame(c1)
colnames(ffm_kolkata)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  mohali ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/mohali_20/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_mohali<-data.frame(c1)
colnames(ffm_mohali)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  Mt_abu ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/Mt_abu_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_mt_abu<-data.frame(c1)
colnames(ffm_mt_abu)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  mumbai ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_mumbai<-data.frame(c1)
colnames(ffm_mumbai)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  pondi ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/pondi_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_pondi<-data.frame(c1)
colnames(ffm_pondi)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)
###################################################  sagar ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/sagar_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_sagar<-data.frame(c1)
colnames(ffm_sagar)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)

###################################################  shadnagar ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/shadnagar_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_shadnagar<-data.frame(c1)
colnames(ffm_shadnagar)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)

###################################################  sinhagad ################################################################

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a<-14
s=0.8
a1<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/home/jithin/STILT/Data_Comparison/sinhagad_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]
a6<-a6[,a]
a7<-a7[,a]
a8<-a8[,a]
a9<-a9[,a]
a10<-a10[,a]

ffm<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  p1<-ffm[k2,]
  p2=colMeans(p1)
  c1[j,]=p2
}
ffm_sinhagad<-data.frame(c1)
colnames(ffm_sinhagad)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")

rm(c1,ffm,p1,a,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,j,k1,k2,p2,s)

####################################################################################################################################################

sd_ffm_banglore<- sapply(ffm_banglore, sd)
sd_ffm_cape<- sapply(ffm_cape, sd)
sd_ffm_chennai<- sapply(ffm_chennai, sd)
sd_ffm_delhi<- sapply(ffm_delhi, sd)
sd_ffm_hanle<- sapply(ffm_hanle, sd)
sd_ffm_kharagpur<- sapply(ffm_kharagpur, sd)
sd_ffm_kodai<- sapply(ffm_kodai, sd)
sd_ffm_kolkata<- sapply(ffm_kolkata, sd)
sd_ffm_mohali<- sapply(ffm_mohali, sd)
sd_ffm_mt_abu<- sapply(ffm_mt_abu, sd)
sd_ffm_mumbai<- sapply(ffm_mumbai, sd)
sd_ffm_pondi<- sapply(ffm_pondi, sd)
sd_ffm_sagar<- sapply(ffm_sagar, sd)
sd_ffm_shadnagar<- sapply(ffm_shadnagar, sd)
sd_ffm_sinhagad<- sapply(ffm_sinhagad, sd)

###################################################################################################################################################

sd_df<-data.frame(sd_ffm_banglore,sd_ffm_cape,sd_ffm_chennai,sd_ffm_delhi,sd_ffm_hanle,sd_ffm_kharagpur,sd_ffm_kodai,
                  sd_ffm_kolkata,sd_ffm_mohali,sd_ffm_mt_abu,sd_ffm_mumbai,sd_ffm_pondi,sd_ffm_sagar,sd_ffm_shadnagar,sd_ffm_sinhagad)
sd_cities<-data.frame(sd_df$sd_ffm_banglore,sd_df$sd_ffm_chennai,sd_df$sd_ffm_delhi,sd_df$sd_ffm_kolkata,sd_df$sd_ffm_mumbai)

EC_sd<-sd_df[1:5,]
WRF_sd<-sd_df[6:10,]

Avg_sd_EC<-colMeans(EC_sd)
Avg_sd_WRF<-colMeans(WRF_sd)

EC_sd_cities<-sd_cities[1:5,]
WRF_sd_cities<-sd_cities[6:10,]

Avg_sd_EC_cities<-colMeans(EC_sd_cities)
Avg_sd_WRF_cities<-colMeans(WRF_sd_cities)

Avg_sd<-data.frame(Avg_sd_EC,Avg_sd_WRF)
Avg_sd_cities<-data.frame(Avg_sd_EC_cities,Avg_sd_WRF_cities)

EC_coff_sd<-t(sd_df[1,])
WRF_coff_sd<-t(sd_df[6,])
coff_sd<-data.frame(EC_coff_sd,WRF_coff_sd)
###################################################################################
############### ********************* ##############
rect_sd<-data.frame(Avg_sd,coff_sd)
###############  ******************** ###############  End of one method to quantify the rectification effect
###################################################################################

M_ffm_banglore<-colMeans(ffm_banglore)
M_ffm_cape<-colMeans(ffm_cape)
M_ffm_chennai<-colMeans(ffm_chennai)
M_ffm_delhi<-colMeans(ffm_delhi)
M_ffm_hanle<-colMeans(ffm_hanle)
M_ffm_kharagpur<-colMeans(ffm_kharagpur)
M_ffm_kodai<-colMeans(ffm_kodai)
M_ffm_kolkata<-colMeans(ffm_kolkata)
M_ffm_mohali<-colMeans(ffm_mohali)
M_ffm_mt_abu<-colMeans(ffm_mt_abu)
M_ffm_mumbai<-colMeans(ffm_mumbai)
M_ffm_pondi<-colMeans(ffm_pondi)
M_ffm_sagar<-colMeans(ffm_sagar)
M_ffm_shadnagar<-colMeans(ffm_shadnagar)
M_ffm_sinhagad<-colMeans(ffm_sinhagad)
Mean_ffm<-data.frame(M_ffm_banglore,M_ffm_cape,M_ffm_chennai,M_ffm_delhi,M_ffm_hanle,M_ffm_kharagpur,M_ffm_kodai
                     ,M_ffm_kolkata,M_ffm_mohali,M_ffm_mt_abu,M_ffm_mumbai,M_ffm_pondi,M_ffm_sagar,M_ffm_shadnagar,M_ffm_sinhagad)
#########################################################################################
################### ************************************** #############################
rect_sd_1<-(sd_df/Mean_ffm)*100
EC_rect_sd_1<-rect_sd_1[1:5,]
WRF_rect_sd_1<-rect_sd_1[6:10,]
###################  ************************************* ########### End of second method 
########################################################################################
write.csv(EC_rect_sd_1,"/home/jithin/STILT/Data_Comparison/plots/EC_rect_sd.csv", row.names = TRUE)
write.csv(WRF_rect_sd_1,"/home/jithin/STILT/Data_Comparison/plots/WRF_rect_sd.csv", row.names = TRUE)

############################################  plotting  ################################################

x=seq(1,15)
plot(x,EC_rect_sd_1[1,],col='darkgreen',pch=19,xaxt = "n",cex=2)
points(x,EC_rect_sd_1[2,],col='darkred',pch=19)
points(x,EC_rect_sd_1[3,],col='blue',pch=19)
points(x,EC_rect_sd_1[4,],col='green',pch=19)
points(x,EC_rect_sd_1[5,],col='orange',pch=19)
#
op <- par(cex = 1)
legend('topright',legend=c('EC_COFF', 'EC_EDA','EC_EDM','EC_FFDAS','EC_ODIAC'),
       pch=c(19,19), col=c('darkgreen', 'darkred','blue','green','orange'),cex = 0.5,pt.cex = 2)
axis(1, at = seq(1,15), labels = c('BLR','CAPE','CHN','DLH','HANLE','KGR','KODAI','KLKT','MOHALI','MT','MUM','PONDI','SAGAR','SHGR','SNG'))
################################################################################################################
x=seq(1,15)
plot(x,WRF_rect_sd_1[1,],col='darkgreen',pch=19,xaxt = "n",cex=2)
points(x,WRF_rect_sd_1[2,],col='darkred',pch=19)
points(x,WRF_rect_sd_1[3,],col='blue',pch=19)
points(x,WRF_rect_sd_1[4,],col='green',pch=19)
points(x,WRF_rect_sd_1[5,],col='orange',pch=19)
#
op <- par(cex = 1)
legend('topright',legend=c('WRF_COFF', 'WRF_EDA','WRF_EDM','WRF_FFDAS','WRF_ODIAC'),
       pch=c(19,19), col=c('darkgreen', 'darkred','blue','green','orange'),cex = 0.5,pt.cex = 2)
axis(1, at = seq(1,15), labels = c('BLR','CAPE','CHN','DLH','HANLE','KGR','KODAI','KLKT','MOHALI','MT','MUM','PONDI','SAGAR','SHGR','SNG'))

