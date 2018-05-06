# spherical.computeSignedArea()

Returns the signed area of a closed path. The signed area may be used to determine the orientation of the path.

```
plugin.google.maps.geometry.spherical.computeSignedArea(path);
```

## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
path           | ILatLng[]     | path
-----------------------------------------------------------------------

## Demo code

```html
<div id="map_canvas"></div>
```

```js
var points = [
  {lat: 51.511077, lng: -0.119245},
  {lat: 51.504986, lng: -0.113911},
  {lat: 51.504532, lng: -0.113776},
  {lat: 51.501627, lng: -0.116714},
  {lat: 51.501082, lng: -0.115802},
  {lat: 51.500663, lng: -0.115511},
  {lat: 51.500346, lng: -0.116477},
  {lat: 51.500101, lng: -0.116925},
  {lat: 51.50059, lng: -0.117819},
  {lat: 51.500881, lng: -0.125734},
  {lat: 51.504042, lng: -0.126174},
  {lat: 51.50689, lng: -0.127602},
  {lat: 51.509784, lng: -0.122767}
];

var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: points,
    padding : 100
  }
});

map.addPolyline({
  "points": points
});

var signedArea = plugin.google.maps.geometry.spherical.computeSignedArea(points);

map.addMarker({
  position: points[0],
  title: "This polyline is \n" +
        (signedArea < 0 ? "clockwise" : "counter clockwise")
});

marker.showInfoWindow();

```

![](image.png)
