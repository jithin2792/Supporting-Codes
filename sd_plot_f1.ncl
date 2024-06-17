f = addfile("std_new2.nc","r")
v = f->std
v!0 = "lat"
v!1 = "lon"
v&lat@units="degrees_north"
v&lon@units="degrees_east"


wks = gsn_open_wks("png","sd_plot_final_revision")
;gsn_define_colormap(wks,"WhiteBlueGreenYellowRed")


cmap=read_colormap_file("WhiteYellowOrangeRed")

gsn_define_colormap(wks,cmap)

  ;sname = "/home/jithin/STILT/Data_Comparison/spatial_plot/States/Admin2.shp"
  sname = "/media/jithin/disk1/jithin/Shape_file/India.shp"
  res                      = True
  res@gsnFrame             =False
  ;res@gsnDraw              = False
  res@mpMinLatF                   = 5
  res@mpMaxLatF                   = 40
  res@mpMinLonF                   = 66
  res@mpMaxLonF                   = 100
  res@cnFillPalette         = cmap(0:,:) 
  res@gsnMaximize           = True
  res@tiMainFont = "times-roman"
  res@gsnPaperOrientation   = "Portrait"
  res@cnLevelSelectionMode  = "ManualLevels"
  res@cnMinLevelValF        = 20
  res@cnMaxLevelValF        = 100
  res@cnLevelSpacingF       = 5
  res@cnInfoLabelOn         = False            ; turn off cn info label
  res@cnFillOn              = True             ; turn on color
  res@cnLineLabelsOn        = False
  res@cnLinesOn             = False
  res@gsnAddCyclic         = False
  res@cnFillMode           = "RasterFill"
  ;res@tiMainString         = "COFF 0.5x0.5 2017"
  ;res@tiMainFontHeightF    = 0.01
  ;res@tiMainJust           = "CenterLeft"
  ;res@tiMainPosition       = "Left"
  res@lbLabelStride        = 1
  res@lbOrientation        = "horizontal"
  res@lbLabelFontHeightF   = 0.015
  res@tmXBLabelFontHeightF = 0.013
  res@tmYLLabelFontHeightF = 0.013
  res@lbTitleString ="Standard deviation (moles m~S~-2~N~ yr~S~-1~N~)"
  res@lbTitleFontHeightF=.015
  res@lbTitlePosition="Bottom"


      ;res@gsnLeftString="Standard Deviation"
      ;res@gsnLeftStringFontHeightF = 0.02
      ;res@gsnRightString = "moles m~S~-2~N~ yr~S~-1~N~"
      ;res@gsnRightStringFontHeightF = 0.02
      plot =gsn_csm_contour_map(wks,v,res)

  lnres = True
  lnres@gsLineColor = "Black"
  lnres@gsLineThicknessF = 0.8
  id = gsn_add_shapefile_polylines(wks,plot,sname,lnres)

lat_new1 = (/17.68,19.07,21.17,23.02,21.16,22.57,28.61,30.73,25.21,16.21,13.08,12.972,11.59,18.75,20,21.09,22.4,23.46,24.2/)
lon_new1 = (/83.21,72.87,72.83,72.57,81.42,88.36,77.20,76.77,75.86,77.35,80.27,77.58,79.45,79.45,79.24,85.07,82.67,87.13,82.60/)

s = dimsizes(lat_new1)
color = (/"red","red","red","red","red","red","red","red","red","red","red","red","black","black","black","black","black","black","black"/)

pmres1 = True
pmres1@gsMarkerIndex = 4
pmres1@gsMarkerSizeF = 0.02
pmres1@gsMarkerThicknessF = 5
dum2 = new(s,graphic)
do i = 0,s-1
;pmres1 = True
pmres1@gsMarkerColor = color(i);
;pmres1@gsMarkerIndex = 16
;pmres1@gsMarkerSizeF = 0.008
;pmres1@gsMarkerThicknessF = 5
la = lat_new1(i)
lo = lon_new1(i)

dum2(i)=gsn_add_polymarker(wks,plot,lo,la,pmres1)
end do

index=(/"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22"/)
txres=  True
txres@txFontHeightF=0.01
txres@txFontThicknessF=10

dum3 = new(s,graphic)
do i=0,s-1
la = lat_new1(i)
lo = lon_new1(i)
dum3(i)=gsn_add_text(wks,plot,index(i), lo, la, txres)
end do



maximize_output(wks,False)

frame(wks)



