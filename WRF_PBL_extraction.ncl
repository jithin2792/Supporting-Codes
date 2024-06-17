begin
;dir="/home/jithin/STILT/Data_Comparison/stilt_results/analysis/Met_Analysis/ERA5_ml_2017-04-30_00.nc"
dir=systemfunc("ls /media/dir1/Met_files/WRF/wrfout*.nc")
f=addfiles(dir,"r")

PBLH=wrf_user_getvar(f,"PBLH",-1)
latx=f[:]->XLAT(0,:,:)
lonx=f[:]->XLONG(0,:,:)
printVarSummary(PBLH)
;exit

lat=28.58
lon=77.20

ll=getind_latlon2d(latx,lonx,lat,lon)
printVarSummary(ll)

lat1=ll(0,0)
lon1=ll(0,1)

;u=uvm(0,:,:,lat1,lon1)
;v=uvm(1,:,:,lat1,lon1)
PBL = PBLH(:,lat1,lon1)
printVarSummary(PBL)

;printVarSummary(uvm)
;printVarSummary(u)
;printVarSummary(v)
;exit

out=addfile("WRF_PBL_delhi.nc","c")
out->PBLH = PBL

exit
lat=30.66
lon=76.73

ll=getind_latlon2d(latx,lonx,lat,lon)
;printVarSummary(ll)

lat1=ll(0,0)
lon1=ll(0,1)

u=uvm(0,:,:,lat1,lon1)
v=uvm(1,:,:,lat1,lon1)


;printVarSummary(uvm)
;printVarSummary(u)
;printVarSummary(v)
;exit

out=addfile("WRF_wind_Mohali.nc","c")
out->uwind=u
out->vwind=v

lat=24.6
lon=72.7

ll=getind_latlon2d(latx,lonx,lat,lon)
;printVarSummary(ll)

lat1=ll(0,0)
lon1=ll(0,1)

u=uvm(0,:,:,lat1,lon1)
v=uvm(1,:,:,lat1,lon1)


;printVarSummary(uvm)
;printVarSummary(u)
;printVarSummary(v)
;exit

out=addfile("WRF_wind_Mt_Abu.nc","c")
out->uwind=u
out->vwind=v

lat=12.01
lon=79.86

ll=getind_latlon2d(latx,lonx,lat,lon)
;printVarSummary(ll)

lat1=ll(0,0)
lon1=ll(0,1)

u=uvm(0,:,:,lat1,lon1)
v=uvm(1,:,:,lat1,lon1)


;printVarSummary(uvm)
;printVarSummary(u)
;printVarSummary(v)
;exit

out=addfile("WRF_wind_Puducherry.nc","c")
out->uwind=u
out->vwind=v

lat=24
lon=79

ll=getind_latlon2d(latx,lonx,lat,lon)
;printVarSummary(ll)

lat1=ll(0,0)
lon1=ll(0,1)

u=uvm(0,:,:,lat1,lon1)
v=uvm(1,:,:,lat1,lon1)


;printVarSummary(uvm)
;printVarSummary(u)
;printVarSummary(v)
;exit

out=addfile("WRF_wind_Sagar.nc","c")
out->uwind=u
out->vwind=v

lat=17.02
lon=78.11

ll=getind_latlon2d(latx,lonx,lat,lon)
;printVarSummary(ll)

lat1=ll(0,0)
lon1=ll(0,1)

u=uvm(0,:,:,lat1,lon1)
v=uvm(1,:,:,lat1,lon1)


;printVarSummary(uvm)
;printVarSummary(u)
;printVarSummary(v)
;exit

out=addfile("WRF_wind_Shadnagar.nc","c")
out->uwind=u
out->vwind=v

lat=18.35
lon=73.75

ll=getind_latlon2d(latx,lonx,lat,lon)
;printVarSummary(ll)

lat1=ll(0,0)
lon1=ll(0,1)

u=uvm(0,:,:,lat1,lon1)
v=uvm(1,:,:,lat1,lon1)


;printVarSummary(uvm)
;printVarSummary(u)
;printVarSummary(v)
;exit

out=addfile("WRF_wind_Sinhagad.nc","c")
out->uwind=u
out->vwind=v



end
