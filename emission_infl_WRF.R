a1<-read.csv("H:/STILT_RESULTS/banglore_100/WRF_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("H:/STILT_RESULTS/banglore_100/WRF_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("H:/STILT_RESULTS/banglore_100/WRF_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("H:/STILT_RESULTS/banglore_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("H:/STILT_RESULTS/banglore_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")
a<-14
a1<-a1[,a]
a2<-a2[,a]
a3<-a3[,a]
a4<-a4[,a]
a5<-a5[,a]

b1<-read.csv("H:/STILT_RESULTS/chennai_100/WRF_COFF.csv",header=TRUE,sep=",")
b2<-read.csv("H:/STILT_RESULTS/chennai_100/WRF_EDA.csv",header=TRUE,sep=",")
b3<-read.csv("H:/STILT_RESULTS/chennai_100/WRF_EDM.csv",header=TRUE,sep=",")
b4<-read.csv("H:/STILT_RESULTS/chennai_100/WRF_FFDAS.csv",header=TRUE,sep=",")
b5<-read.csv("H:/STILT_RESULTS/chennai_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")

b1<-b1[,a]
b2<-b2[,a]
b3<-b3[,a]
b4<-b4[,a]
b5<-b5[,a]

c1<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_COFF.csv",header=TRUE,sep=",")
c2<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_EDA.csv",header=TRUE,sep=",")
c3<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_EDM.csv",header=TRUE,sep=",")
c4<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_FFDAS.csv",header=TRUE,sep=",")
c5<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")
c1<-c1[,a]
c2<-c2[,a]
c3<-c3[,a]
c4<-c4[,a]
c5<-c5[,a]

d1<-read.csv("H:/STILT_RESULTS/kolkata_100/WRF_COFF.csv",header=TRUE,sep=",")
d2<-read.csv("H:/STILT_RESULTS/kolkata_100/WRF_EDA.csv",header=TRUE,sep=",")
d3<-read.csv("H:/STILT_RESULTS/kolkata_100/WRF_EDM.csv",header=TRUE,sep=",")
d4<-read.csv("H:/STILT_RESULTS/kolkata_100/WRF_FFDAS.csv",header=TRUE,sep=",")
d5<-read.csv("H:/STILT_RESULTS/kolkata_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")
d1<-d1[,a]
d2<-d2[,a]
d3<-d3[,a]
d4<-d4[,a]
d5<-d5[,a]

e1<-read.csv("H:/STILT_RESULTS/mumbai_100/WRF_COFF.csv",header=TRUE,sep=",")
e2<-read.csv("H:/STILT_RESULTS/mumbai_100/WRF_EDA.csv",header=TRUE,sep=",")
e3<-read.csv("H:/STILT_RESULTS/mumbai_100/WRF_EDM.csv",header=TRUE,sep=",")
e4<-read.csv("H:/STILT_RESULTS/mumbai_100/WRF_FFDAS.csv",header=TRUE,sep=",")
e5<-read.csv("H:/STILT_RESULTS/mumbai_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")
e1<-e1[,a]
e2<-e2[,a]
e3<-e3[,a]
e4<-e4[,a]
e5<-e5[,a]

library(ggplot2)
library(reshape2)

df_a<-data.frame(a1,a2,a3,a4,a5)
colnames(df_a)<-c("COFF","EDA","EDM","FFDAS","ODIAC")
df_am<-melt(df_a)

df_b<-data.frame(b1,b2,b3,b4,b5)
colnames(df_b)<-c("COFF","EDA","EDM","FFDAS","ODIAC")
df_bm<-melt(df_b)

df_c<-data.frame(c1,c2,c3,c4,c5)
colnames(df_c)<-c("COFF","EDA","EDM","FFDAS","ODIAC")
df_cm<-melt(df_c)

df_d<-data.frame(d1,d2,d3,d4,d5)
colnames(df_d)<-c("COFF","EDA","EDM","FFDAS","ODIAC")
df_dm<-melt(df_d)

df_e<-data.frame(e1,e2,e3,e4,e5)
colnames(df_e)<-c("COFF","EDA","EDM","FFDAS","ODIAC")
df_em<-melt(df_e)

p1<-ggplot(df_am,aes(x=value,color=variable)) + 
  geom_density(linetype="solid",size=1.5)+xlim(0,35)+ylim(0,0.4)+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15),axis.title.x = element_blank())+
  ylab("Prob. Density")+
  ggtitle("Banglore_100m a.g.l")


p2<-ggplot(df_bm,aes(x=value,color=variable)) + 
  geom_density(linetype="solid",size=1.5)+xlim(0,35)+ylim(0,0.2)+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.title.y = element_blank(),axis.text = element_text(size = 15),axis.title.x = element_blank())+
  ylab("Prob. Density")+
  ggtitle("Chennai_100m a.g.l")

p3<-ggplot(df_cm,aes(x=value,color=variable)) + 
  geom_density(linetype="solid",size=1.5)+xlim(0,35)+ylim(0,0.45)+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15),axis.title.x = element_blank())+
  ylab("Prob. Density")+
  ggtitle("Delhi_100m a.g.l")

p4<-ggplot(df_dm,aes(x=value,color=variable)) + 
  geom_density(linetype="solid",size=1.5)+xlim(0,35)+ylim(0,0.2)+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15),axis.title.y = element_blank())+
  ylab("Prob. Density")+
  xlab("FFCO2 Conc. (ppm)")+
  ggtitle("Kolkata_100m a.g.l")

p5<-ggplot(df_em,aes(x=value,color=variable)) + 
  geom_density(linetype="solid",size=1.5)+xlim(0,35)+ylim(0,0.2)+
  theme_minimal()+
  theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15))+
  ylab("Prob. Density")+
  xlab("FFCO2 Conc. (ppm)")+
  ggtitle("Mumbai_100m a.g.l")

library(gtable)
library(gridExtra)
grid.arrange(p1,p2,p3,p4,p5,nrow=3,ncol=2,top="WRF Meteorology, May 2017")




