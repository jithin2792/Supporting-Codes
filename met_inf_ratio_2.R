
library(ggplot2)
library(reshape2)
atit=20
atxt=20
ptit=20
yl1=.1
yl2=7

a1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/hanle_20/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a<-14
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

for (j in 0:7){
  k2=k1+j
  a1<-ffm[k2,]
  a2=colMeans(a1)
  c1[j+1,]=a2
}


mean_ffm<-rowMeans(ffm)
COFF=c1[,6]/c1[,1]
EDA=c1[,7]/c1[,2]
EDM=c1[,8]/c1[,3]
FFDAS=c1[,9]/c1[,4]
ODIAC=c1[,10]/c1[,5]

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")


df_a1<-data.frame(COFF,EDA,EDM,FFDAS,ODIAC)
write.csv(df_a1,"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_infl_Conc/hanle.csv", row.names = FALSE)
s=0.8
xl=c(0,8)
p1<-ggplot(df_a1,aes(x=1:8)) +
  geom_line(aes(y=COFF,color="ICOS - COFFEE"),linetype="solid",size=s)+ylim(yl1,yl2)+#+xlim(0,240)+
  geom_line(aes(y=EDA,color="EDGAR Annual"),linetype="solid",size=s)+#
  geom_line(aes(y=FFDAS,color="FFDAS"),linetype="solid",size=s)+#
  geom_line(aes(y=ODIAC,color="ODIAC"),linetype="solid",size=s)+#
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),
        plot.title = element_text(size = ptit, face = "bold"),legend.position = 'null')+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Ratio (WRF:ECMWF)")+xlab("Time of the day")+
  ggtitle("Hanle")+
  theme(plot.title = element_text(hjust=0.05,vjust = - 10))


# ##########################################################################################
# 
a1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/mohali_20/WRF_ODIAC_new.csv",header=TRUE,sep=",")
# 
a<-14
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

for (j in 0:7){
  k2=k1+j
  a1<-ffm[k2,]
  a2=colMeans(a1)
  c1[j+1,]=a2
}


mean_ffm<-rowMeans(ffm)
COFF=c1[,6]/c1[,1]
EDA=c1[,7]/c1[,2]
EDM=c1[,8]/c1[,3]
FFDAS=c1[,9]/c1[,4]
ODIAC=c1[,10]/c1[,5]

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")


df_a1<-data.frame(COFF,EDA,EDM,FFDAS,ODIAC)
write.csv(df_a1,"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_infl_Conc/mohali.csv", row.names = FALSE)

s=0.8
xl=c(0,8)
p2<-ggplot(df_a1,aes(x=1:8)) +
  geom_line(aes(y=COFF,color="ICOS - COFFEE"),linetype="solid",size=s)+ylim(yl1,yl2)+#+xlim(0,240)+
  geom_line(aes(y=EDA,color="EDGAR Annual"),linetype="solid",size=s)+#
  geom_line(aes(y=FFDAS,color="FFDAS"),linetype="solid",size=s)+#
  geom_line(aes(y=ODIAC,color="ODIAC"),linetype="solid",size=s)+#
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),
        plot.title = element_text(size = ptit, face = "bold"),legend.position = 'null')+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Ratio (WRF:ECMWF)")+xlab("Time of the day")+
  ggtitle("Mohali")+
  theme(plot.title = element_text(hjust=0.05,vjust = - 10),
        axis.title.y = element_blank())


###############################################################################################
a1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sagar_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")
# 
a<-14
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

for (j in 0:7){
  k2=k1+j
  a1<-ffm[k2,]
  a2=colMeans(a1)
  c1[j+1,]=a2
}


mean_ffm<-rowMeans(ffm)
COFF=c1[,6]/c1[,1]
EDA=c1[,7]/c1[,2]
EDM=c1[,8]/c1[,3]
FFDAS=c1[,9]/c1[,4]
ODIAC=c1[,10]/c1[,5]

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")


df_a1<-data.frame(COFF,EDA,EDM,FFDAS,ODIAC)
write.csv(df_a1,"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_infl_Conc/sagar.csv", row.names = FALSE)
s=0.8
xl=c(0,8)
p3<-ggplot(df_a1,aes(x=1:8)) +
  geom_line(aes(y=COFF,color="ICOS - COFFEE"),linetype="solid",size=s)+ylim(yl1,yl2)+#+xlim(0,240)+
  geom_line(aes(y=EDA,color="EDGAR Annual"),linetype="solid",size=s)+#
  geom_line(aes(y=FFDAS,color="FFDAS"),linetype="solid",size=s)+#
  geom_line(aes(y=ODIAC,color="ODIAC"),linetype="solid",size=s)+#
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),
        plot.title = element_text(size = ptit, face = "bold"),legend.position = 'null')+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Ratio (WRF:ECMWF)")+xlab("Time of the day")+
  ggtitle("Sagar")+
  theme(plot.title = element_text(hjust=0.05,vjust = - 10))


################################################################################################
a1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/shadnagar_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")
# 
a<-14
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

for (j in 0:7){
  k2=k1+j
  a1<-ffm[k2,]
  a2=colMeans(a1)
  c1[j+1,]=a2
}


mean_ffm<-rowMeans(ffm)
COFF=c1[,6]/c1[,1]
EDA=c1[,7]/c1[,2]
EDM=c1[,8]/c1[,3]
FFDAS=c1[,9]/c1[,4]
ODIAC=c1[,10]/c1[,5]

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")


df_a1<-data.frame(COFF,EDA,EDM,FFDAS,ODIAC)
write.csv(df_a1,"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_infl_Conc/shadnagar.csv", row.names = FALSE)

s=0.8
xl=c(0,8)
p4<-ggplot(df_a1,aes(x=1:8)) +
  geom_line(aes(y=COFF,color="ICOS - COFFEE"),linetype="solid",size=s)+ylim(yl1,yl2)+#+xlim(0,240)+
  geom_line(aes(y=EDA,color="EDGAR Annual"),linetype="solid",size=s)+#
  geom_line(aes(y=FFDAS,color="FFDAS"),linetype="solid",size=s)+#
  geom_line(aes(y=ODIAC,color="ODIAC"),linetype="solid",size=s)+#
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),
        plot.title = element_text(size = ptit, face = "bold"),legend.position = 'null',)+
  scale_x_continuous(breaks=1:8,labels=time)+
  ylab("Ratio (WRF:ECMWF)")+xlab("Time of the day")+
  ggtitle("Shadnagar")+
  theme(plot.title = element_text(hjust=0.05,vjust = - 10),
        axis.title.y = element_blank())

#############################################################################################
a1<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/EC_COFF.csv",header=TRUE,sep=",")
a2<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/EC_EDA.csv",header=TRUE,sep=",")
a3<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/EC_EDM.csv",header=TRUE,sep=",")
a4<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/EC_FFDAS.csv",header=TRUE,sep=",")
a5<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/EC_ODIAC_new.csv",header=TRUE,sep=",")
a6<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/WRF_COFF.csv",header=TRUE,sep=",")
a7<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/WRF_EDA.csv",header=TRUE,sep=",")
a8<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/WRF_EDM.csv",header=TRUE,sep=",")
a9<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/WRF_FFDAS.csv",header=TRUE,sep=",")
a10<-read.csv("/media/jithin/disk1/jithin/Data_Comparison/sinhagad_100/WRF_ODIAC_new.csv",header=TRUE,sep=",")

a<-14
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

for (j in 0:7){
  k2=k1+j
  a1<-ffm[k2,]
  a2=colMeans(a1)
  c1[j+1,]=a2
}


mean_ffm<-rowMeans(ffm)
COFF=c1[,6]/c1[,1]
EDA=c1[,7]/c1[,2]
EDM=c1[,8]/c1[,3]
FFDAS=c1[,9]/c1[,4]
ODIAC=c1[,10]/c1[,5]

time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")


df_a1<-data.frame(COFF,EDA,EDM,FFDAS,ODIAC)
write.csv(df_a1,"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_infl_Conc/sinhagad.csv", row.names = FALSE)

s=0.8
xl=c(0,8)
p5<-ggplot(df_a1,aes(x=1:8)) +
  geom_line(aes(y=COFF,color="ICOS - COFFEE"),linetype="solid",size=s)+ylim(yl1,yl2)+#+xlim(0,240)+
  geom_line(aes(y=EDA,color="EDGAR Annual"),linetype="solid",size=s)+#
  geom_line(aes(y=FFDAS,color="FFDAS"),linetype="solid",size=s)+#
  geom_line(aes(y=ODIAC,color="ODIAC"),linetype="solid",size=s)+#
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),
        plot.title = element_text(size = ptit, face = "bold"),legend.position = 'null')+
  scale_x_continuous(breaks=1:8,labels=time)+
  theme_minimal()+
  theme(axis.title = element_text(size = atit),axis.text = element_text(size = atxt),
        plot.title = element_text(size = ptit, face = "bold"),legend.key.height  = unit(2,'cm'),
        legend.key.width = unit(4,'cm'),legend.title = element_text(size = 20),
        legend.text = element_text(size = 20))+
  ylab("Ratio (WRF:ECMWF)")+xlab("Time of the day")+
  ggtitle("Sinhagad")+
  theme(plot.title = element_text(hjust=0.05,vjust = - 10))

##################################################################################################################################################################

legend<-get_legend(p5+guides(color=guide_legend(ncol=1))+
                     theme(legend.position="bottom",legend.title=element_blank()))
p5<-p5+theme(legend.position = 'null')

library(cowplot)
library(rlang)
p<-plot_grid(p1,p2,p3,p4,p5,legend, ncol = 2,nrow=3, align = 'vh',
             labels=c("(a)","(b)","(c)","(d)","(e)"),label_size = 25)


ggsave("met_infl_ratio_2.jpeg", plot = p, scale = 1, path = "/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/plots",
       width = 17, height = 15, dpi = 300, bg ="white")
