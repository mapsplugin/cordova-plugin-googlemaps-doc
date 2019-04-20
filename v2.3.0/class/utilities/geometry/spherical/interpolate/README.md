:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# spherical.interpolate()

Returns the LatLng which lies the given fraction of the way between the origin [LatLng](../../../LatLng/README.md) and the destination [LatLng](../../../LatLng/README.md).

```
plugin.google.maps.geometry.spherical.interpolate(from, to, fraction);
```

## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
from           | ILatLng       | from position
to             | ILatLng       | to position
fraction       | number        | percent of the path (from 0.0 to 1.0)
-----------------------------------------------------------------------

## Demo code
```html
<div id="map_canvas"></div>
```

```js
var nyc = {"lat": 40.715, "lng": -74.002};
var london =  {"lat": 51.506, "lng": -0.119};
var points = [nyc, london];

var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: points,
    padding: 100
  }
});

map.addPolyline({
  "points": points,
  "geodesic": true
});

var marker = map.addMarker({
  position: nyc
});

var fraction = 0;
var direction = 1;
setInterval(function() {
  fraction += 0.01 * direction;
  if (fraction >= 1) {
    direction = -1;
  } else if (fraction <= 0) {
    direction = 1;
  }

  var position = plugin.google.maps.geometry.spherical.interpolate(nyc, london, fraction);
  marker.setPosition(position);
}, 50);


```

![](image.gif)
