begin
;dir="/home/jithin/STILT/Data_Comparison/stilt_results/analysis/Met_Analysis/ERA5_ml_2017-04-30_00.nc"
dir=systemfunc("ls /media/dir1/Met_files/ECMWF/nc/ERA*.nc")
f=addfiles(dir,"r")
;print(f)
;exit
ListSetType(f,"join")
lat = 22.00
lon = 87.18
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Kharagpur.nc","c")
out->uwind=u
out->vwind=v


lat = 10.23
lon = 77.46
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Kodaikanal.nc","c")
out->uwind=u
out->vwind=v

lat = 30.66
lon = 76.73
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Mohali.nc","c")
out->uwind=u
out->vwind=v

lat = 24.60
lon = 72.70
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Mt_Abu.nc","c")
out->uwind=u
out->vwind=v

lat = 12.01
lon = 79.86
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Puducherry.nc","c")
out->uwind=u
out->vwind=v

lat = 24.00
lon = 79.00
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Sagar.nc","c")
out->uwind=u
out->vwind=v

lat = 17.02
lon = 78.11
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Shadnagar.nc","c")
out->uwind=u
out->vwind=v


lat = 18.35
lon = 73.75
u=f[:]->UGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
v=f[:]->VGRD_P0_L105_GLL0(:,90:0,{lat},{lon})
printVarSummary(u)
printVarSummary(v)
;exit
;y=dim_avg_n_Wrap(x1,0)
;printVarSummary(y)
out=addfile("ECMWF_wind_Sinhagad.nc","c")
out->uwind=u
out->vwind=v


end
