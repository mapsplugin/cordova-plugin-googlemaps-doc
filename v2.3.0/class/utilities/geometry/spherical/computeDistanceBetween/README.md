:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# spherical.computeDistanceBetween()

Returns the distance, in meters, between two [LatLng](../../../LatLng/README.md)s.

```
plugin.google.maps.geometry.spherical.computeDistanceBetween(from, to);
```

## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
from           | ILatLng       | origin position
to             | ILatLng       | destination position
-----------------------------------------------------------------------

## Demo code

```html
<div id="map_canvas">
  <span  class="smallPanel" id="label"></span>
</div>
```

```js
var center = {"lat": 32, "lng": -97};

// radius (meter)
var radius = 300;

// Calculate the positions
var deg0 = plugin.google.maps.geometry.spherical.computeOffset(center, radius, 0);
var deg90 = plugin.google.maps.geometry.spherical.computeOffset(center, radius, 90);
var deg180 = plugin.google.maps.geometry.spherical.computeOffset(center, radius, 180);
var deg270 = plugin.google.maps.geometry.spherical.computeOffset(center, radius, 270);

var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: [
      center,
      deg0,
      deg90,
      deg180,
      deg270
    ],
    padding: 100
  }
});


var marker = map.addMarker({
  'position': deg0,
  'draggable': true,
  'title': 'Drag me!'
});

marker.showInfoWindow();

// Add circle
var circle = map.addCircle({
  'center': center,
  'radius': radius,
  'strokeColor' : '#AA00FF',
  'strokeWidth': 5,
  'fillColor' : '#00880055'
});

var label = document.getElementById("label");
circle.on("radius_changed", function(prev, radius) {
  label.innerText = "radius : " + radius.toFixed(2) + "(m)";
});

marker.on("position_changed", function(oldValue, newValue) {
    // Calculate distance between center and the marker position
    var radius = plugin.google.maps.geometry.spherical.computeDistanceBetween(center, newValue);

    // Update the radius
    circle.setRadius(radius);
});

```

![](image.gif)
