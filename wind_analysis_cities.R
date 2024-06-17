###########################################               Chennai              ################################################################

#################################################         Wind Speed    ###########################################################



a1<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_ERA5_intp_Uw.csv")
a2<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_ERA5_intp_Vw.csv")
a3<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_WRF_Uw.csv")
a4<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Chennai/Chennai_WRF_Vw.csv")
 

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
#####################################################################################################################################
df<-data.frame(ERA5_intp_Uw,ERA5_intp_Vw,WRF_Uw,WRF_Vw)

t1<-df[c(24,1,2),]
mt<-colMeans(abs(t1)) 
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt1<-c(E,W)

t1<-df[c(3,4,5),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt2<-c(E,W)

t1<-df[c(6,7,8),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt3<-c(E,W)


t1<-df[c(9,10,11),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt4<-c(E,W)

t1<-df[c(12,13,14),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt5<-c(E,W)

t1<-df[c(15,16,17),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt6<-c(E,W)

t1<-df[c(18,19,20),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt7<-c(E,W)


t1<-df[c(21,22,23),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt8<-c(E,W)
time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a=rbind(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8)
rm(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,t1,mt,EU,EV,WU,WV)

data<- data.frame(a)
colnames(data)<-c("ECMWF","WRF")
rm<-rowMeans(data)
diff<-abs(data[,1]-data[,2])/2
p_diff<-(diff/rm)*100
avg_diff_CHN<-mean(p_diff)


df_chennai<-data.frame(time,a)
colnames(df_chennai)<-c("time","CH_ECMWF","CH_WRF")
rm(df,a1,a2,a3,a4,E,data,a)

###########################################               Banglore              ################################################################

#################################################         Wind Speed    ###########################################################



a1<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Banglore/Banglore_ERA5_intp_Uw.csv")
a2<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Banglore/Banglore_ERA5_intp_Vw.csv")
a3<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Banglore/Banglore_WRF_Uw.csv")
a4<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Banglore/Banglore_WRF_Vw.csv")


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
#####################################################################################################################################
df<-data.frame(ERA5_intp_Uw,ERA5_intp_Vw,WRF_Uw,WRF_Vw)

t1<-df[c(24,1,2),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt1<-c(E,W)

t1<-df[c(3,4,5),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt2<-c(E,W)

t1<-df[c(6,7,8),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt3<-c(E,W)


t1<-df[c(9,10,11),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt4<-c(E,W)

t1<-df[c(12,13,14),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt5<-c(E,W)

t1<-df[c(15,16,17),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt6<-c(E,W)

t1<-df[c(18,19,20),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt7<-c(E,W)


t1<-df[c(21,22,23),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt8<-c(E,W)
time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a=rbind(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8)
rm(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,t1,mt,EU,EV,WU,WV)

data<- data.frame(a)
colnames(data)<-c("ECMWF","WRF")
rm<-rowMeans(data)
diff<-abs(data[,1]-data[,2])/2
p_diff<-(diff/rm)*100
avg_diff_BGR<-mean(p_diff)

df_Banglore<-data.frame(time,a)
colnames(df_Banglore)<-c("time","CH_ECMWF","CH_WRF")
rm(df,a1,a2,a3,a4,E,a,data)

###########################################               Delhi              ################################################################

#################################################         Wind Speed    ###########################################################



a1<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Delhi/Delhi_ERA5_intp_Uw.csv")
a2<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Delhi/Delhi_ERA5_intp_Vw.csv")
a3<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Delhi/Delhi_WRF_Uw.csv")
a4<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Delhi/Delhi_WRF_Vw.csv")


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
#####################################################################################################################################
df<-data.frame(ERA5_intp_Uw,ERA5_intp_Vw,WRF_Uw,WRF_Vw)

t1<-df[c(24,1,2),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt1<-c(E,W)

t1<-df[c(3,4,5),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt2<-c(E,W)

t1<-df[c(6,7,8),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt3<-c(E,W)


t1<-df[c(9,10,11),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt4<-c(E,W)

t1<-df[c(12,13,14),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt5<-c(E,W)

t1<-df[c(15,16,17),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt6<-c(E,W)

t1<-df[c(18,19,20),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt7<-c(E,W)


t1<-df[c(21,22,23),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt8<-c(E,W)
time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a=rbind(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8)
rm(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,t1,mt,EU,EV,WU,WV)

data<- data.frame(a)
colnames(data)<-c("ECMWF","WRF")
rm<-rowMeans(data)
diff<-abs(data[,1]-data[,2])/2
p_diff<-(diff/rm)*100
avg_diff_DLH<-mean(p_diff)


df_Delhi<-data.frame(time,a)
colnames(df_Delhi)<-c("time","CH_ECMWF","CH_WRF")
rm(df,a1,a2,a3,a4,E,a,data)

###########################################               Kolkata              ################################################################

#################################################         Wind Speed    ###########################################################



a1<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Kolkata/Kolkata_ERA5_intp_Uw.csv")
a2<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Kolkata/Kolkata_ERA5_intp_Vw.csv")
a3<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Kolkata/Kolkata_WRF_Uw.csv")
a4<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Kolkata/Kolkata_WRF_Vw.csv")


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
#####################################################################################################################################
df<-data.frame(ERA5_intp_Uw,ERA5_intp_Vw,WRF_Uw,WRF_Vw)

t1<-df[c(24,1,2),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt1<-c(E,W)

t1<-df[c(3,4,5),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt2<-c(E,W)

t1<-df[c(6,7,8),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt3<-c(E,W)


t1<-df[c(9,10,11),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt4<-c(E,W)

t1<-df[c(12,13,14),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt5<-c(E,W)

t1<-df[c(15,16,17),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt6<-c(E,W)

t1<-df[c(18,19,20),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt7<-c(E,W)


t1<-df[c(21,22,23),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt8<-c(E,W)
time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a=rbind(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8)
rm(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,t1,mt,EU,EV,WU,WV)

data<- data.frame(a)
colnames(data)<-c("ECMWF","WRF")
rm<-rowMeans(data)
diff<-abs(data[,1]-data[,2])/2
p_diff<-(diff/rm)*100
avg_diff_KLK<-mean(p_diff)


df_Kolkata<-data.frame(time,a)
colnames(df_Kolkata)<-c("time","CH_ECMWF","CH_WRF")
rm(df,a1,a2,a3,a4,E,a,data)

###########################################               Mumbai              ################################################################

#################################################         Wind Speed    ###########################################################



a1<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Mumbai/Mumbai_ERA5_intp_Uw.csv")
a2<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Mumbai/Mumbai_ERA5_intp_Vw.csv")
a3<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Mumbai/Mumbai_WRF_Uw.csv")
a4<-read.table("/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/Mumbai/Mumbai_WRF_Vw.csv")


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
#####################################################################################################################################
df<-data.frame(ERA5_intp_Uw,ERA5_intp_Vw,WRF_Uw,WRF_Vw)

t1<-df[c(24,1,2),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt1<-c(E,W)

t1<-df[c(3,4,5),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt2<-c(E,W)

t1<-df[c(6,7,8),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt3<-c(E,W)


t1<-df[c(9,10,11),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt4<-c(E,W)

t1<-df[c(12,13,14),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt5<-c(E,W)

t1<-df[c(15,16,17),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt6<-c(E,W)

t1<-df[c(18,19,20),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt7<-c(E,W)


t1<-df[c(21,22,23),]
mt<-colMeans(abs(t1))
EU<-mean(mt[1:10])
EV<-mean(mt[40:39])
E<-sqrt((EU*EU+EV*EV))
WU<-mean(mt[79:88])
WV<-mean(mt[118:127])
W<-sqrt(WU*WU+WV*WV)
mt8<-c(E,W)
time=c("05:30","08:30","11:30","14:30","17:30","20:30","23:30","02:30")
a=rbind(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8)
rm(mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,t1,mt,EU,EV,WU,WV)
df_Mumbai<-data.frame(time,a)
colnames(df_Mumbai)<-c("time","CH_ECMWF","CH_WRF")
rm(df,a1,a2,a3,a4,E)

data<- data.frame(a)
colnames(data)<-c("ECMWF","WRF")
rm<-rowMeans(data)
diff<-abs(data[,1]-data[,2])/2
p_diff<-(diff/rm)*100
avg_diff_MUM<-mean(p_diff)



# md_bgr<-abs(mean(df_Banglore$CH_ECMWF-df_Banglore$CH_WRF))
# md_chn<-abs(mean(df_chennai$CH_ECMWF-df_chennai$CH_WRF))
# md_dlh<-abs(mean(df_Delhi$CH_ECMWF-df_Delhi$CH_WRF))
# md_klk<-abs(mean(df_Kolkata$CH_ECMWF-df_Kolkata$CH_WRF))
# md_mum<-abs(mean(df_Mumbai$CH_ECMWF-df_Mumbai$CH_WRF))



