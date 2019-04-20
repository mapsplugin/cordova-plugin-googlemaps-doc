:green_heart: This is the latest document.

# poly.containsLocation()

Computes whether the given point lies inside the specified polygon rectangle.

```
plugin.google.maps.geometry.poly.containsLocation(position, path);
```

## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
position       | ILatLng       | check position
path           | ILatLng[]     | Array of ILatLng
-----------------------------------------------------------------------

## Demo code

```js
<div id="map_canvas"></div>
```

```js
var GORYOKAKU_POINTS = [
  {lat: 41.79883, lng: 140.75675},
  {lat: 41.799240000000005, lng: 140.75875000000002},
  {lat: 41.797650000000004, lng: 140.75905},
  {lat: 41.79637, lng: 140.76018000000002},
  {lat: 41.79567, lng: 140.75845},
  {lat: 41.794470000000004, lng: 140.75714000000002},
  {lat: 41.795010000000005, lng: 140.75611},
  {lat: 41.79477000000001, lng: 140.75484},
  {lat: 41.79576, lng: 140.75475},
  {lat: 41.796150000000004, lng: 140.75364000000002},
  {lat: 41.79744, lng: 140.75454000000002},
  {lat: 41.79909000000001, lng: 140.75465},
  {lat: 41.79883, lng: 140.75673}
];
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  'gestures': {
    'scroll': false,
    'tilt': false,
    'rotate': false,
    'zoom': false
  },
  camera: {
    target: GORYOKAKU_POINTS
  }
});


// Add polygon
var polygon = map.addPolygon({
  'points': GORYOKAKU_POINTS,
  'strokeColor' : '#AA00FF',
  'strokeWidth': 5,
  'fillColor' : '#880000'
});

var marker = map.addMarker({
  'position': (new plugin.google.maps.LatLngBounds(GORYOKAKU_POINTS)).getCenter(),
  'draggable': true,
  'title': 'drag me!'
});

// Open the infoWindow
marker.showInfoWindow();


// If the marker position is changed,
// calculates the position is in the specified polygon rectangle.
// If in the polygon, change the marker color to "blue", otherwise, "red".
marker.on("position_changed", function() {
  var position = marker.getPosition();
  var contain = plugin.google.maps.geometry.poly.containsLocation(
                      position, GORYOKAKU_POINTS);
  marker.setIcon(contain ? "blue" : "red");
});

// Fire the position_changed event for the first calculation
marker.trigger("position_changed", 0, marker.getPosition());


```

![](image.gif)
