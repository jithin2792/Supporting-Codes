
; Panel Plot
;**************************************************************************************************

f1 = addfile("odiac_log_moles_annual_17.nc","r")
f2 = addfile("COFF_Mole_log_ANNUAL_yr_2017.nc","r")
f3 = addfile("EDGAR_Mole_log_ANNUAL_yr_2017.nc","r")
f4 = addfile("FFDAS_Mole_log_ANNUAL_yr_2017.nc","r")

v1 = f1->emission
v2 = f2->emission
v3 = f3->emission
v4 = f4->emission

;printVarSummary(v1)
;printVarSummary(v2)
;printVarSummary(v3)
;printVarSummary(v4)

;***************************************************************************************************
; create plots
;***************************************************************************************************

v1!0 = "lat"
v1!1 = "lon"
v1&lat@units="degrees_north"
v1&lon@units="degrees_east"
v1@_FillValue = default_fillvalue(typeof(v1))
v1 = where(v1.eq."-inf",v1@_FillValue,v1)

v2!0 = "lat"
v2!1 = "lon"
v2&lat@units="degrees_north"
v2&lon@units="degrees_east"
v2@_FillValue = default_fillvalue(typeof(v2))
v2 = where(v2.eq."-inf",v2@_FillValue,v2)

v3!0 = "lat"
v3!1 = "lon"
v3&lat@units="degrees_north"
v3&lon@units="degrees_east"
v3@_FillValue = default_fillvalue(typeof(v3))
v3 = where(v3.eq."-inf",v3@_FillValue,v3)

v4!0 = "LATITUDE"
v4!1 = "LONGITUDE"
v4&LATITUDE@units="degrees_north"
v4&LONGITUDE@units="degrees_east"
v4@_FillValue = default_fillvalue(typeof(v4))
v4 = where(v4.eq."-inf",v4@_FillValue,v4)



wks   = gsn_open_wks("png","panel")
plot  = new(4,graphic) 
gsn_define_colormap(wks,"WhiteYellowOrangeRed")


  sname = "/home/jithin/STILT/Data_Comparison/spatial_plot/States/Admin2.shp"
  res                      = True
  res@gsnFrame             =False
  res@gsnDraw              = False
  res@mpMinLatF                   = 5
  res@mpMaxLatF                   = 40
  res@mpMinLonF                   = 66
  res@mpMaxLonF                   = 100
  ;res@gsnMaximize           = True
  res@tiMainFont = "times-roman"
  res@gsnPaperOrientation   = "Portrait"
  res@cnLevelSelectionMode  = "ManualLevels"
  res@cnMinLevelValF        = 1;-11
  res@cnMaxLevelValF        = 8
  res@cnLevelSpacingF       = 1
  res@cnInfoLabelOn         = False            ; turn off cn info label
  res@lbLabelBarOn          = False
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
  res@lbOrientation        = "vertical"
  res@lbLabelFontHeightF   = 0.01
  res@tmXBLabelFontHeightF = 0.015
  res@tmYLLabelFontHeightF = 0.015

;      res@gsnLeftString="ODIAC 1x1 2017"
;      res@gsnLeftStringFontHeightF = 0.04
;      res@gsnRightString = "log(moles m~S~-2~N~ yr~S~-1~N~)"
;      res@gsnRightStringFontHeightF = 0.01

;***********************************************************************************     
plot(0) =gsn_csm_contour_map(wks,v1,res)
plot(1) =gsn_csm_contour_map(wks,v2,res)
plot(2) =gsn_csm_contour_map(wks,v3,res)
plot(3) =gsn_csm_contour_map(wks,v4,res)

lnres = True
lnres@gsLineColor = "Black"
lnres@gsLineThicknessF = 1
id = gsn_add_shapefile_polylines(wks,plot,sname,lnres)
;**************************************************************************************
; create panel
;***************************************************************************************

  resP                  = True                   ; modify the panel plot
  resP@gsnFrame         = False                  ; don't advance panel plot
  resP@gsnPanelLabelBar = True                   ; add common colorbar
  ;resP@gsnPanelMainString = "A common title"     ; set main title
  resP@gsnPanelBottom   = 0.05                   ; add space at bottom
  resP@gsnPanelFigureStrings= (/"(a)","(b)","(c)","(d)"/) ; add strings to panel
  resP@amJust   = "TopLeft"
  gsn_panel(wks,plot,(/2,2/),resP)               ; now draw as one plot

  txres               = True
  txres@txFontHeightF = 0.015
  gsn_text_ndc(wks,"log(moles m~S~-2~N~yr~S~-1~N~)",0.5,0.05,txres)
  frame(wks)
  
