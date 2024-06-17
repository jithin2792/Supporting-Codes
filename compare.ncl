
locations = (/"Banglore","cape","Chennai","Cochin","Delhi","hanle","Kharagpur","Kodaikanal","Kolkata","Mohali","Mt_Abu","Mumbai","Puducherry","Sagar","Shadnagar","Sinhagad"/)
latitude  = (/12.97,15.08,13.08,10.04,28.87,32.78,22,10.23,22.57,30.66,24.6,19.07,12.01,24,17.02,18.35/)
longitude = (/77.59,73.83,80.27,76.33,77.20,78.96,87.18,77.46,88.36,76.73,72.7,72.87,79.86,79,78.11,73.75/)


;do i = 0, 15
i = 3
 loc = locations(i)
 lat = latitude(i)
 lon = longitude(i)
print(loc)
 dir1=str_concat((/"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/ECMWF_wind_",loc,".nc"/))
 dir2=str_concat((/"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/WRF_wind_",loc,".nc"/))
 dir1x="/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/ERA5_ML_description.csv"

; dir2x="/media/dir2/wrfout_d01_2017-05-01_01:00:00"
dir2x = "/media/dir1/Met_files/WRF/wrfout_d01_2017-05-09-22.nc"

 f1=addfile(dir1,"r")
 f2=addfile(dir2,"r")
 f1x=asciiread(dir1x,(/91,9/),"float")
 f2xx=addfile(dir2x,"r")

 printVarSummary(f2xx)

 f2x1=f2xx->PH
 f2x2=f2xx->PHB
 PH=wrf_user_unstagger(f2x1,f2x1@stagger)
 printVarSummary(PH)
 PHB=wrf_user_unstagger(f2x2,f2x2@stagger)
 printVarSummary(PHB)

 latx=f2xx->XLAT(0,:,:)
 lonx=f2xx->XLONG(0,:,:)

 ll=getind_latlon2d(latx,lonx,lat,lon)
 lat1=ll(0,0)
 lon1=ll(0,1)
 PH1=PH(0,:,lat1,lon1)

 PHB1=PHB(0,:,lat1,lon1)
 f2H=((PH1+PHB1)/9.8)

 printVarSummary(f2H)
 print(f2H)
;exit
 copy_VarCoords(PH1,f2H)
 f1H=f1x(:,6)

 E_U=f1->uwind(0:719,:)
 W_U=f2->uwind
 int_ECuw=linint1(f1H,E_U,False,f2H,0)

 E_V=f1->vwind(0:719,:)
 W_V=f2->vwind
 int_ECvw=linint1(f1H,E_V,False,f2H,0)

 opt=True
 opt@fout=str_concat((/"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/check/",loc,"_WRF_Vw.csv"/))
 write_matrix(W_V,"39f10.2",opt)

 opt@fout=str_concat((/"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/check/",loc,"_ERA5_intp_Vw.csv"/))
 write_matrix(int_ECvw,"39f10.2",opt)

 opt@fout=str_concat((/"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/check/",loc,"_WRF_Uw.csv"/))
 write_matrix(W_U,"39f10.2",opt)

 opt@fout=str_concat((/"/media/jithin/disk1/jithin/Data_Comparison/stilt_results/analysis/Met_Analysis/check/",loc,"_ERA5_intp_Uw.csv"/))
 write_matrix(int_ECuw,"39f10.2",opt)

;end do

