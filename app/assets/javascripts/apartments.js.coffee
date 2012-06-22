$(document).ready ->
  $(".map").gmap3
    action: "init"
    options:
      center: [ 38.7169993, -9.1383139 ]
      zoom: 11
  ,
    action: "addMarker"
    latLng: [ 38.7169993, -9.1383139 ]