A1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/chennai_100/EC_COFF.csv",header=TRUE,sep=",")
A6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/chennai_100/WRF_COFF.csv",header=TRUE,sep=",")
a<-9
a1<-A1[,a]
a6<-A6[,a]
ch_WRF<-a6
ch_ECMWF<-a1
df_ch<-data.frame(ch_WRF,ch_ECMWF)
rm(A1,A6,a,a1,a6)

A1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/banglore_100/EC_COFF.csv",header=TRUE,sep=",")
A6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/banglore_100/WRF_COFF.csv",header=TRUE,sep=",")
a<-9
a1<-A1[,a]
a6<-A6[,a]
bgr_WRF<-a6
bgr_ECMWF<-a1
df_bgr<-data.frame(bgr_WRF,bgr_ECMWF)
rm(A1,A6,a,a1,a6)

A1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mumbai_100/EC_COFF.csv",header=TRUE,sep=",")
A6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mumbai_100/WRF_COFF.csv",header=TRUE,sep=",")
a<-9
a1<-A1[,a]
a6<-A6[,a]
mum_WRF<-a6
mum_ECMWF<-a1
df_mum<-data.frame(mum_WRF,mum_ECMWF)
rm(A1,A6,a,a1,a6)

A1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/delhi_100/EC_COFF.csv",header=TRUE,sep=",")
A6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/delhi_100/WRF_COFF.csv",header=TRUE,sep=",")
a<-9
a1<-A1[,a]
a6<-A6[,a]
del_WRF<-a6
del_ECMWF<-a1
df_dlh<-data.frame(del_WRF,del_ECMWF)
rm(A1,A6,a,a1,a6)

A1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/kolkata_100/EC_COFF.csv",header=TRUE,sep=",")
A6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/kolkata_100/WRF_COFF.csv",header=TRUE,sep=",")
a<-9
a1<-A1[,a]
a6<-A6[,a]
klk_WRF<-a6
klk_ECMWF<-a1
df_klk<-data.frame(klk_WRF,klk_ECMWF)
rm(A1,A6,a,a1,a6)


df_c<-data.frame(df_bgr,df_ch,df_dlh,df_klk,df_mum)

k1<-seq(0,232,by=8)
c1=matrix(nrow = 8,ncol = 10)

for (j in 1:8){
  k2=k1+j
  a1<-df_c[k2,]
  a2=colMeans(a1)
  c1[j,]=a2
}

colnames(c1)<-c("ch_WRF","ch_ECMWF","bgr_WRF","bgr_ECMWF","mum_WRF","mum_ECMWF","dlh_WRF","dlh_ECMWF","klk_WRF","klk_ECMWF")


ch<-c1[,1:2]
bg<-c1[,3:4]
mum<-c1[,5:6]
dl<-c1[,7:8]
kok<-c1[,9:10]

ch<- data.frame(ch)
colnames(ch)<-c("WRF","ECMWF")
ch<-transform(ch, row_stdev=apply(ch, 1, sd, na.rm=TRUE))
sd<-colMeans(ch)
un_ch<-(sd[3]/((sd[1]+sd[2])/2))*100
rm(ch,sd)

bg<- data.frame(bg)
colnames(bg)<-c("WRF","ECMWF")
bg<-transform(bg, row_stdev=apply(bg, 1, sd, na.rm=TRUE))
sd<-colMeans(bg)
un_bg<-(sd[3]/((sd[1]+sd[2])/2))*100
rm(bg,sd)

mum<- data.frame(mum)
colnames(mum)<-c("WRF","ECMWF")
mum<-transform(mum, row_stdev=apply(mum, 1, sd, na.rm=TRUE))
sd<-colMeans(mum)
un_mum<-(sd[3]/((sd[1]+sd[2])/2))*100
rm(mum,sd)

dl<- data.frame(dl)
colnames(dl)<-c("WRF","ECMWF")
dl<-transform(dl, row_stdev=apply(dl, 1, sd, na.rm=TRUE))
sd<-colMeans(dl)
un_dl<-(sd[3]/((sd[1]+sd[2])/2))*100
rm(dl,sd)

kok<- data.frame(kok)
colnames(kok)<-c("WRF","ECMWF")
kok<-transform(kok, row_stdev=apply(kok, 1, sd, na.rm=TRUE))
sd<-colMeans(kok)
un_kok<-(sd[3]/((sd[1]+sd[2])/2))*100
rm(kok,sd)



