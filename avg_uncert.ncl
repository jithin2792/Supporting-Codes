

;dir1="/home/jithin/STILT/Data_Comparison/spatial_plot/sd_plot/ind/new/mean.nc"
;dir2="/home/jithin/STILT/Data_Comparison/spatial_plot/sd_plot/ind/new/std_new2.nc"
;dir=systemfunc("ls /home/jithin/STILT/Data_Comparison/spatial_plot/sd_plot/ind/new/ind*.nc")

dir1="/media/dir1/Data_Comparison/spatial_plot/sd_plot/ind/new/std_new2.nc"

f1=addfile(dir1,"r")
;x=f1->mean
x=f1->std
;f2=addfile(dir2,"r")
;y=f2->std


;printVarSummary(x)
;printVarSummary(y)

;exit



p1_lat=11.59
p1_lon=79.45
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x1      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x1_avg  =avg(x1)
;y1      = y({lat_min1:lat_max1},{lon_min1:lon_max1})
;y1_avg  = avg(y1)
;u1=(y1_avg/x1_avg)*100
print("Neyveli_100")
print(x1_avg)


;un=(avg(y)/avg(x))*100

;print(un)

exit

p1_lat=21.17
p1_lon=72.83
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x6      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x6_avg  =avg(x6)
print("Surat")
print(x6_avg)

p1_lat=23.02
p1_lon=72.57
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x7      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x7_avg  =avg(x7)
print("Ahamedabad")
print(x7_avg)

p1_lat=21.16
p1_lon=81.42
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
x8      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x8_avg  =avg(x8)
print("Durg")
print(x8_avg)


p1_lat=21.09
p1_lon=85.07
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x9      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x9_avg  =avg(x9)
print("Talcher")
print(x9_avg)

p1_lat=22.40
p1_lon=82.67
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x10      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x10_avg  =avg(x10)
print("T.S Hub Korba")
print(x10_avg)

p1_lat=23.46
p1_lon=87.13
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x12      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x12_avg  =avg(x12)
print("Mejia T.S")
print(x12_avg)


p1_lat=22.57
p1_lon=88.36
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x13      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x13_avg  =avg(x13)
print("Kolkata")
print(x13_avg)

p1_lat=24.2
p1_lon=82.6
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x14      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x14_avg  =avg(x14)
print("Vidhyanchal")
print(x14_avg)

p1_lat=28.61
p1_lon=77.20
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x15      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x15_avg  =avg(x15)
print("Delhi")
print(x15_avg)

p1_lat=25.2
p1_lon=81.66
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x16      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x16_avg  =avg(x16)
print("Prayagraj")
print(x16_avg)


p1_lat=23.18
p1_lon=79.98
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x17      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x17_avg  =avg(x17)
print("Jabalpur")
print(x17_avg)

p1_lat=30.73
p1_lon=76.77
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x18      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x18_avg  =avg(x18)
print("Chandigarh")
print(x18_avg)

p1_lat=29.58
p1_lon=74.32
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x19      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x19_avg  =avg(x19)
print("Hanumangarh")
print(x19_avg)

p1_lat=25.21
p1_lon=75.86
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x20      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x20_avg  =avg(x20)
print("Kota")
print(x20_avg)


p1_lat=16.21
p1_lon=77.35
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x21      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x21_avg  =avg(x21)
print("Raichur")
print(x21_avg)

p1_lat=13.08
p1_lon=80.27
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x23      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x23_avg  =avg(x23)
print("Chennai")
print(x23_avg)



p1_lat=12.97
p1_lon=77.58
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x24      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x24_avg  =avg(x24)
print("Banglore")
print(x24_avg)


p1_lat=12.97
p1_lon=77.58
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x25      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x25_avg  =avg(x25)
print("Banglore_100")
print(x25_avg)



p1_lat=23.3
p1_lon=86.3
lat_min1=p1_lat-1
lat_max1=p1_lat+1
lon_min1=p1_lon-1
lon_max1=p1_lon+1
x26      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x26_avg  =avg(x26)
print("Purulia")
print(x26_avg)

p1_lat=23.3
p1_lon=86.3
lat_min1=p1_lat-0.5
lat_max1=p1_lat+0.5
lon_min1=p1_lon-0.5
lon_max1=p1_lon+0.5
x27      = x({lat_min1:lat_max1},{lon_min1:lon_max1})
x27_avg  =avg(x27)
print("Purulia_100")
print(x27_avg)

exit




