library(ggplot2)
library(ggcorrplot)
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

a<-14
c1<-a1[1:240,a]
c2<-a2[1:240,a]
c3<-a3[1:240,a]
c4<-a4[1:240,a]
c5<-a5[1:240,a]

c6<-a6[,a]
c7<-a7[,a]
c8<-a8[,a]
c9<-a9[,a]
c10<-a10[,a]
# 
# b=matrix(c(c1,c2,c3,c4,c5,c6,c7,c9,c10),ncol =9)
x<-data.frame(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
colnames(x)<-c("EC_COFF","EC_EDA","EC_EDM","EC_FFDAS","EC_ODIAC","WRF_COFF","WRF_EDA","WRF_EDM","WRF_FFDAS","WRF_ODIAC")
corr<-cor(x)

#head(corr[,1:9])
#p.mat<-cor_pmat(d1)
# head(p.mat[,1:5])

ggcorrplot(corr, hc.order=TRUE,lab = TRUE,outline.color = "white",type = "lower",
           ggtheme = ggplot2::theme_dark(), colors = c("white", "grey", "black"),lab_col = "white") +
           labs(title = "Correlation for  FFCO2 Conc. (delhi_100m agl)") #p.mat = p.mat,insig = "blank",

