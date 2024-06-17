f = addfile("ODIAC_0.1_Mole_log_ANNUAL_yr_2017.nc","r")
v = f->emission
printVarSummary(v)
v!0 = "lat"
v!1 = "lon"
v&lat@units="degrees_north"
v&lon@units="degrees_east"
v@_FillValue = default_fillvalue(typeof(v))
v = where(v.eq."-inf",v@_FillValue,v) 
;exit

wks = gsn_open_wks("x11","ODIAC_log_SP")
;gsn_define_colormap(wks,"NCV_jaisnd");"WhiteBlueGreenYellowRed")
gsn_define_colormap(wks,"WhiteBlueGreenYellowRed")
  sname = "/media/jithin/disk2/Jithin/SHP_FILES/India.shp"
  res                      = True
  res@gsnFrame             =False
  ;res@gsnDraw              = False
  res@mpMinLatF                   = 5
  res@mpMaxLatF                   = 40
  res@mpMinLonF                   = 66
  res@mpMaxLonF                   = 100
  ;res@gsnMaximize           = True
  res@tiMainFont = "times-roman"
  res@gsnPaperOrientation   = "Portrait"
  res@cnLevelSelectionMode  = "ManualLevels"
  res@cnMinLevelValF        = -11
  res@cnMaxLevelValF        = 6
  res@cnLevelSpacingF       = 1
  res@cnInfoLabelOn         = False            ; turn off cn info label
  res@cnFillOn              = True             ; turn on color
  res@cnLineLabelsOn        = False
  res@cnLinesOn             = False
  res@gsnAddCyclic         = False
  ;res@cnFillMode           = "RasterFill"
  ;res@tiMainString         = "COFF 0.5x0.5 2017"
  ;res@tiMainFontHeightF    = 0.01
  ;res@tiMainJust           = "CenterLeft"
  ;res@tiMainPosition       = "Left"
  res@lbLabelStride        = 1
  res@lbOrientation        = "vertical"
  res@lbLabelFontHeightF   = 0.01
  res@tmXBLabelFontHeightF = 0.015
  res@tmYLLabelFontHeightF = 0.015

      res@gsnLeftString="ODIAC 1x1 2017"
      res@gsnLeftStringFontHeightF = 0.04
      res@gsnRightString = "log(moles m~S~-2~N~ yr~S~-1~N~)"
      res@gsnRightStringFontHeightF = 0.02
      plot =gsn_csm_contour_map(wks,v,res)

  lnre = True
  lnres@gsLineColor = "Black"
  lnres@gsLineThicknessF = 2.0
  id = gsn_add_shapefile_polylines(wks,plot,sname,lnres)
  maximize_output(wks,False) 
