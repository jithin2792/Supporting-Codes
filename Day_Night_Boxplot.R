a1<-read.csv("H:/STILT_RESULTS/delhi_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("H:/STILT_RESULTS/delhi_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("H:/STILT_RESULTS/delhi_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("H:/STILT_RESULTS/delhi_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("H:/STILT_RESULTS/delhi_100/EC_ODIAC.csv",header=TRUE,sep=",")

a6<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("H:/STILT_RESULTS/delhi_100/WRF_ODIAC.csv",header=TRUE,sep=",")

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
x<-data.frame(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10)

########################################################################################

k1<-seq(4,236,by=8)
k2<-seq(5,237,by=8)
k3<-seq(6,238,by=8)
k4<-seq(7,239,by=8)

m<-c(k1,k2,k3,k4)
day<-x[m,]
colnames(day)<-c("EC_COFF","EC_EDA",
               "EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF",
               "WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")
library(reshape2)
y1<-melt(day)
line<-"#1F3552"
library(ggplot2)
p1<-ggplot(y1,aes(x=variable,y=value))+
  geom_boxplot(colour=line,outlier.colour = "red")+ylim(0,65)+
  ggtitle("Boxplots for all FFCO2 stilt results over Delhi (Day Time, May 2017)")+
  xlab("Combinations Used") + ylab("FFCO2 Conc. (ppm)")+
  theme_bw()

#########################################################################################


k5<-seq(8,240,by=8)
k6<-seq(3,235,by=8)
k7<-seq(2,234,by=8)
k8<-seq(1,233,by=8)
n<-c(k5,k6,k7,k8)
night<-x[n,]
colnames(night)<-c("EC_COFF","EC_EDA",
               "EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF",
               "WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")
y2<-melt(night)
p2<-ggplot(y2,aes(x=variable,y=value))+
  geom_boxplot(colour=line,outlier.colour = "red")+ylim(0,65)+
  ggtitle("Boxplots for all FFCO2 stilt results over Delhi (Night Time, May 2017)")+
  xlab("Combinations Used") + ylab("FFCO2 Conc. (ppm)")+
  theme_bw()

##########################################################################################

library(gtable)
library(gridExtra)
grid.arrange(p1,p2,nrow=2,ncol=1)




