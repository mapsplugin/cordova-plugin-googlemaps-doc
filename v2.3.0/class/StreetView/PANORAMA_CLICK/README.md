:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# event: PANORAMA_CLICK

This event is fired when StreetView panorama is clicked.

```
panorama.on(plugin.google.maps.event.PANORAMA_CLICK, function(clickInfo) {

});
```

## Parameters

name           | type                  | description
---------------|-----------------------|-------------------------------------------------
orientation    | PanoramaOrientation   | panorama ID that is bounded for a location
point          | [x: number, : number] | position (latitude, longitude)
----------------------------------------------------------------------------------

## PanoramaOrientation

name           | type           | description
---------------|----------------|-------------------------------------------------
tilt           | number         | camera vertical angle
bearing        | number         | camera horizontal angle from north (clockwise)
----------------------------------------------------------------------------------



## Demo code

```html
<div id="pano_canvas" ></div>
```

```js
var div = document.getElementById("pano_canvas");
var panorama = plugin.google.maps.StreetView.getPanorama(div, {
  camera: {
    target: {lat: 42.345573, lng: -71.098326}
  }
});

panorama.on(plugin.google.maps.event.PANORAMA_CLICK, function(panoramaOrientaion) {
  alert(JSON.stringify(panoramaOrientaion, null, 4));
});
```

![](image.gif)
