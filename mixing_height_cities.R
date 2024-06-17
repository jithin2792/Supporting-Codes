atit=30
atxt=30
ptit=35
s=2
#######################################################   Banglore  #######################################################################################

A1<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_COFF.csv",header=TRUE,sep=",")
A2<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_EDA.csv",header=TRUE,sep=",")
A3<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_EDM.csv",header=TRUE,sep=",")
A4<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_FFDAS.csv",header=TRUE,sep=",")
A5<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/EC_ODIAC_H.csv",header=TRUE,sep=",")
A6<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_COFF.csv",header=TRUE,sep=",")
A7<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_EDA.csv",header=TRUE,sep=",")
A8<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_EDM.csv",header=TRUE,sep=",")
A9<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_FFDAS.csv",header=TRUE,sep=",")
A10<-read.csv("/home/jithin/STILT/Data_Comparison/banglore_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")

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
# yl1=0
# yl2=30
p1<-ggplot(df,aes(x=1:8)) +
  geom_line(aes(y=WRF,color="WRF"),linetype="solid",size=s)+#ylim(yl1,yl2)+
  geom_line(aes(y=ECMWF,color="ECMWF"),linetype="solid",size=s)+
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),legend.position="none",plot.title = element_text(size = ptit, face = "bold"))+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Mixing Height (m)")+xlab("Hours in a day")+
  ggtitle("Banglore")


########################################  Chennai ##############################################################################

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
# yl1=0
# yl2=30
p2<-ggplot(df,aes(x=1:8)) +
  geom_line(aes(y=WRF,color="WRF"),linetype="solid",size=s)+#ylim(yl1,yl2)+
  geom_line(aes(y=ECMWF,color="ECMWF"),linetype="solid",size=s)+
  theme_minimal()+
  scale_color_discrete(name = "Lines", labels = c("ECMWF","WRF"))+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),legend.position="none",plot.title = element_text(size = ptit, face = "bold"))+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Mixing Height (m)")+xlab("Hours in a day")+
  ggtitle("Chennai")

rm(a1,c1,df,df_a1,mxht,a,a2,b1,b2,ECMWF,j,k1,k2,time,WRF)

###############################   Delhi ############################

A1<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_COFF.csv",header=TRUE,sep=",")
A2<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_EDA.csv",header=TRUE,sep=",")
A3<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_EDM.csv",header=TRUE,sep=",")
A4<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_FFDAS.csv",header=TRUE,sep=",")
A5<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/EC_ODIAC_H.csv",header=TRUE,sep=",")
A6<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_COFF.csv",header=TRUE,sep=",")
A7<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_EDA.csv",header=TRUE,sep=",")
A8<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_EDM.csv",header=TRUE,sep=",")
A9<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_FFDAS.csv",header=TRUE,sep=",")
A10<-read.csv("/home/jithin/STILT/Data_Comparison/delhi_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")

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
# yl1=0
# yl2=30
p3<-ggplot(df,aes(x=1:8)) +
  geom_line(aes(y=WRF,color="WRF"),linetype="solid",size=s)+#ylim(yl1,yl2)+
  geom_line(aes(y=ECMWF,color="ECMWF"),linetype="solid",size=s)+
  theme_minimal()+
  scale_color_discrete(name = "Lines", labels = c("ECMWF","WRF"))+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),legend.position="none",plot.title = element_text(size = ptit, face = "bold"))+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Mixing Height (m)")+xlab("Hours in a day")+
  ggtitle("Delhi")

rm(a1,c1,df,df_a1,mxht,a,a2,b1,b2,ECMWF,j,k1,k2,time,WRF)
###################################   Kolkata ############################

A1<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_COFF.csv",header=TRUE,sep=",")
A2<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_EDA.csv",header=TRUE,sep=",")
A3<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_EDM.csv",header=TRUE,sep=",")
A4<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_FFDAS.csv",header=TRUE,sep=",")
A5<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/EC_ODIAC_H.csv",header=TRUE,sep=",")
A6<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_COFF.csv",header=TRUE,sep=",")
A7<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_EDA.csv",header=TRUE,sep=",")
A8<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_EDM.csv",header=TRUE,sep=",")
A9<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_FFDAS.csv",header=TRUE,sep=",")
A10<-read.csv("/home/jithin/STILT/Data_Comparison/kolkata_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")

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
# yl1=0
# yl2=30
p4<-ggplot(df,aes(x=1:8)) +
  geom_line(aes(y=WRF,color="WRF"),linetype="solid",size=s)+#ylim(yl1,yl2)+
  geom_line(aes(y=ECMWF,color="ECMWF"),linetype="solid",size=s)+
  theme_minimal()+
  scale_color_discrete(name = "Lines", labels = c("ECMWF","WRF"))+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),legend.position="none",plot.title = element_text(size = ptit, face = "bold"))+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Mixing Height (m)")+xlab("Hours in a day")+
  ggtitle("Kolkata")

rm(a1,c1,df,df_a1,mxht,a,a2,b1,b2,ECMWF,j,k1,k2,time,WRF)

########################################################### Mumbai #####################################

A1<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_COFF.csv",header=TRUE,sep=",")
A2<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_EDA.csv",header=TRUE,sep=",")
A3<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_EDM.csv",header=TRUE,sep=",")
A4<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_FFDAS.csv",header=TRUE,sep=",")
A5<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/EC_ODIAC_H.csv",header=TRUE,sep=",")
A6<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_COFF.csv",header=TRUE,sep=",")
A7<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_EDA.csv",header=TRUE,sep=",")
A8<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_EDM.csv",header=TRUE,sep=",")
A9<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_FFDAS.csv",header=TRUE,sep=",")
A10<-read.csv("/home/jithin/STILT/Data_Comparison/mumbai_100/WRF_ODIAC_H.csv",header=TRUE,sep=",")

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
# yl1=0
# yl2=30
p5<- ggplot(df,aes(x=1:8)) +
  geom_line(aes(y=WRF,color="WRF"),linetype="solid",size=s)+#ylim(yl1,yl2)+
  geom_line(aes(y=ECMWF,color="ECMWF"),linetype="solid",size=s)+
  labs(fill='Lines')+
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),
        plot.title = element_text(size = ptit, face = "bold"),legend.key.height  = unit(2,'cm'),
        legend.key.width = unit(4,'cm'),legend.title = element_text(size = 35),
        legend.text = element_text(size = 30))+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Mixing Height (m)")+xlab("Hours in a day")+
  ggtitle("Mumbai")
legend<-get_legend(p5+guides(color=guide_legend(ncol=1))+
                     theme(legend.position="bottom"))

p5<-p5+theme(legend.position = 'null')
#######################################################################################################################################################

library(cowplot)
library(rlang)

p<-plot_grid(p1,p2,p3,p4,p5,legend, ncol = 2,nrow=3, align = 'vh',
             labels=c("(a)","(b)","(c)","(d)","(e)"),label_size = 35)
ggsave("cities.jpeg", plot = p, scale = 1, path = "/home/jithin/STILT/Data_Comparison/stilt_results/analysis/Met_Analysis/PLOTS/Mixing_height/",
       width = 25, height = 35, dpi = 300, bg ="white")
