d1<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/EC_COFF.csv",header=TRUE,sep=",")
d2<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/EC_EDGAR_An.csv",header=TRUE,sep=",")
d3<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/EC_EDM.csv",header=TRUE,sep=",")
d4<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/EC_ffdas.csv",header=TRUE,sep=",")
d5<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/EC_Odiac.csv",header=TRUE,sep=",")

d6<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/WRF_Coffee.csv",header=TRUE,sep=",")
d7<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/WRF_EDA.csv",header=TRUE,sep=",")
d8<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/WRF_EDM.csv",header=TRUE,sep=",")
d9<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/WRF_ffdas.csv",header=TRUE,sep=",")
d10<-read.csv("/home/jithin/STILT/Data_Comparison/STILT_Results/WRF_Odiac.csv",header=TRUE,sep=",")

a<-14

c1<-d1[1:240,a]
c2<-d2[1:240,a]
c3<-d3[1:240,a]
c4<-d4[1:240,a]
c5<-d5[1:240,a]

c6<-d6[,a]
c7<-d7[,a]
c8<-d8[,a]
c9<-d9[,a]
c10<-d10[,a]

x<-data.frame(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
colnames(x)<-c("EC_COFF","EC_EDG","EC_EDGM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDG","WRF_EDGM","WRF_FFDAS","WRF_ODIAC")

library(reshape2)
y<-melt(x)

line<-"#1F3552"
library(ggplot2)
ggplot(y,aes(x=variable,y=value))+
  geom_boxplot(colour=line,outlier.colour = "red")+
  ggtitle("Boxplots for all FFCO2 stilt results over Delhi (May 2017)")+
  xlab("Combinations Used") + ylab("FFCO2 Conc. (ppm)")+
  theme_bw()

# boxplot(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,
#         main="Boxplots for all FFCO2 stilt results over Delhi (May 2017)",
#         names=c("EC_COFF","EC_EDG","EC_EDGM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDG","WRF_EDGM","WRF_FFDAS","WRF_ODIAC"))



