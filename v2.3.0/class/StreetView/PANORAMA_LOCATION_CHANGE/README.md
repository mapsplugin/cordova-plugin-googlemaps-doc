# event: PANORAMA_LOCATION_CHANGE

This event is fired when StreetView panorama is moved.

```
panorama.on(plugin.google.maps.event.PANORAMA_LOCATION_CHANGE, function(location) {

});
```

## Parameters

name           | type           | description
---------------|----------------|-------------------------------------------------
panoId         | string         | panorama ID that is bounded for a location
latLng         | ILatLng        | position (latitude, longitude)
links          | PanoramaLink[] | References to the next location
----------------------------------------------------------------------------------

## PanoramaLink

name           | type           | description
---------------|----------------|-------------------------------------------------
panoId         | string         | panoId of the next location
bearing        | number         | angle from north (clockwise)
----------------------------------------------------------------------------------



## Demo code

```html
<div id="pano_canvas" >
  <div id="map_canvas"></div>
</div>
```

```js
var startPos = {lat: 42.345573, lng: -71.098326};
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: startPos,
    zoom: 18
  }
});

var panoramaDiv = document.getElementById("pano_canvas");
var panorama = plugin.google.maps.StreetView.getPanorama(panoramaDiv, {
  camera: {
    target: startPos
  }
});

var marker = map.addMarker({
  position: startPos,
  draggable: true
});
marker.showInfoWindow();

marker.on("position_changed", function(oldPosition, newPosition) {
  map.animateCamera({
    target: newPosition,
    duration: 1000
  });
});

marker.on(plugin.google.maps.event.MARKER_DRAG_END, function(latLng) {
  panorama.animateCamera({
    target: latLng,
    duration: 100
  });
});
panorama.on(plugin.google.maps.event.PANORAMA_LOCATION_CHANGE, function(location) {
  marker.setPosition(location.latLng);
});
```

![](image.gif)
