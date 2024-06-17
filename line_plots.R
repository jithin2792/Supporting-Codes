a1<-read.csv("H:/STILT_RESULTS/delhi/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("H:/STILT_RESULTS/delhi/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("H:/STILT_RESULTS/delhi/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("H:/STILT_RESULTS/delhi/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("H:/STILT_RESULTS/delhi/EC_ODIAC.csv",header=TRUE,sep=",")

a6<-read.csv("H:/STILT_RESULTS/delhi/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("H:/STILT_RESULTS/delhi/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("H:/STILT_RESULTS/delhi/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("H:/STILT_RESULTS/delhi/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("H:/STILT_RESULTS/delhi/WRF_ODIAC.csv",header=TRUE,sep=",")

d1<-a1[,14]
d2<-a2[,14]
d3<-a3[,14]
d4<-a4[,14]
d5<-a5[,14]
d6<-a6[,14]
d7<-a7[,14]
d8<-a8[,14]
d9<-a9[,14]
d10<-a10[,14]
df<-data.frame(1:240,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10)

s=0.8
library(ggplot2)
p1<-ggplot(df,aes(x=1:240))+
  geom_line(aes(y=d1,color="EC_COFF"),linetype="solid",size=s)+ylim(0,50)+
  geom_line(aes(y=d2,color="EC_EDA"),linetype="solid",size=s)+
  geom_line(aes(y=d3,color="EC_EDM"),linetype="solid",size=s)+
  geom_line(aes(y=d4,color="EC_FFDAS"),linetype="solid",size=s)+
  geom_line(aes(y=d5,color="EC_ODIAC"),linetype="solid",size=s)+
  ggtitle("FFCO2 Captured by ECMWF")+
  xlab("Timeseries (1st to 30th May 2017)") +
  ylab("CO2 Conc. (ppm)")+
  scale_color_discrete(name = "Lines", labels = c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC"))+
  theme_minimal()+
theme(axis.title.x = element_blank(),axis.title = element_text(size = 15),axis.text = element_text(size = 15))
# 
  
  
p2<-ggplot(df,aes(x=1:240))+  
  geom_line(aes(y=d6,color="WRF_COFF"),linetype="solid",size=s)+ylim(0,50)+
  geom_line(aes(y=d7,color="WRF_EDA"),linetype="solid",size=s)+
  geom_line(aes(y=d8,color="WRF_EDM"),linetype="solid",size=s)+
  geom_line(aes(y=d9,color="WRF_FFDAS"),linetype="solid",size=s)+
  geom_line(aes(y=d10,color="WRF_ODIAC"),linetype="solid",size=s)+
  ggtitle("FFCO2 Captured by WRF")+
  xlab("Timeseries (1st to 30th May 2017)") + ylab("CO2 Conc. (ppm)")+
  scale_color_discrete(name = "Lines", labels = c("WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC"))+
  theme_minimal()+
theme(axis.title = element_text(size = 15),axis.text = element_text(size = 15))
# 

library(gtable)
library(gridExtra)
grid.arrange(p1,p2,nrow=2,ncol=1)


