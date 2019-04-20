:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**


---------------
# Polygon class

_This class extends [BaseClass](../BaseClass/README.md)_.

## Contents

  - <a href="#overview">Overview</a>
    - <a href="#create-one-polygon">Create one polygon</a>
    - <a href="#click-event">Click event</a>
    - <a href="#create-polygon-with-holes">Create polygon with holes</a>
  - <a href="#api-reference">API Reference</a>

------------

## Overview


### Create one polygon

The **map.addPolygon()** method draws one polygon onto the map.

- _This method works **after the MAP_READY event**._

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
  camera: {
    target: GORYOKAKU_POINTS
  }
});

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  // Add polygon
  map.addPolygon({
    'points': GORYOKAKU_POINTS,
    'strokeColor' : '#AA00FF',
    'strokeWidth': 5,
    'fillColor' : '#880000'
  }, function(polygon) {

    // to do something...

  });

});
```

<img src="./addPolygon/image.png" width="200">

------------

### Click event

The `POLYGON_CLICK` event is fired when you tap on the polygon with clicked position ([LatLng](../LatLng/README.md) object);

```js

// Add a polygon
map.addPolygon({
  'points': GORYOKAKU_POINTS,
  'strokeColor' : '#AA00FF',
  'strokeWidth': 5,
  'fillColor' : '#880000',
  'clickable' : true  // default = false
}, function(polygon) {

  // Catch the POLYGON_CLICK event
  polygon.on(plugin.google.maps.event.POLYGON_CLICK, onPolygonClick);

});

// The POLYGON_CLICK event passes to the callback
// with the latLng position which is you clicked.
function onPolygonClick(latLng) {

  // The callback is called as the overlay instance.
  var polygon = this;

  // You can change the style for instance.
  polygon.setFillColor("blue");
  polygon.setStrokeColor("green");
  polygon.setStrokeWidth(10);

  // If you want to get the map instance,
  // use the polygon.getMap() method.
  // The polygon.getMap() method returns the map instance
  // which is bound to the polygon.
  var map = polygon.getMap();
  map.addMarker({
    position: latLng,
    title: "You clicked here on the polygon!",
    snippet: latLng.toUrlValue()
  }, function(marker) {
    marker.showInfoWindow();
  });

}
```

<img src="./POLYGON_CLICK/image.gif" width="200">

------------

### Create polygon with holes

You can create holes inside the polygon.

```js
var points = [
  {lat: 41.79873502198214,lng: 140.75676172883607},    // A(Blue)
  {lat: 41.79916701538921, lng: 140.75850996560666},   // B
    ...
  {lat: 41.79898498098061, lng: 140.75494811176304},   // W
  {lat: 41.79872702373399, lng: 140.7566860846557}     // X
];

var holes = [[
  {lat: 41.795692, lng: 140.756214},  // A(Yellow)
  {lat: 41.795492, lng: 140.756150},  // B
  {lat: 41.795556, lng: 140.757813},  // C
    ...
  {lat: 41.796004, lng: 140.755517},  // W
  {lat: 41.795684, lng: 140.756225}   // X
], [
  {lat: 41.79509359115337,  lng: 140.7559088009109},   // A(GREEN)
  {lat: 41.795123461144776, lng: 140.75608584124757},  // B
  {lat: 41.79546948885738,  lng: 140.7556779973297},   // C
  {lat: 41.79554756063853,  lng: 140.7555651964035},   // D
  {lat: 41.795647713509155, lng: 140.7550391871414},   // E
  {lat: 41.794831758258425, lng: 140.75507730157472}   // F
]];

var div = document.getElementById("map_canvas");

// Initialize the map view
var map = plugin.google.maps.Map.getMap(div, {
  'camera' : {
    target: points
  }
});

map.on(plugin.google.maps.event.MAP_READY, function() {

  map.addPolygon({
    points: points,
    holes: holes,
    strokeColor: "blue",
    strokeWidth: 4,
    fillColor: "#FF0000AA"
  }, function(polygon) {

  });

});
```

<img src="./hole.png" width="200">

When you want to create multiple holes in the polygon,
direction of vertexes are very important.

When you create outer path with **clockwise**,

<img src="./hole1.png" width="300">

the first hole path must be **counterclockwise**.

<img src="./hole2.png" width="300">

If you want to create second hole, the path must be **clockwise**.

<img src="./hole3.png" width="300">


------------

## API Reference

### Create

<table>
    <tr>
        <th><a href="./addPolygon/README.md">map.addPolygon()</a></th>
        <td>Add a polygon.</td>
    </tr>
</table>

### Methods
<table>
    <tr>
        <th><a href="./setPoints/README.md">setPoints()</a></th>
        <td>Change the polygon points.</td>
    </tr>
    <tr>
        <th><a href="./getPoints/README.md">getPoints()</a></th>
        <td>Return an instance of the <a href="../BaseArrayClass/README.md">BaseArrayClass</a>.<br>
          You can modify the points.</td>
    </tr>
    <tr>
        <th><a href="./setHoles/README.md">setHoles()</a></th>
        <td>Change the polygon holes.</td>
    </tr>
    <tr>
        <th><a href="./getHoles/README.md">getHoles()</a></th>
        <td>Return an instance of the <a href="../BaseArrayClass/README.md">BaseArrayClass</a>.<br>
          You can modify the holes.</td>
    </tr>
    <tr>
        <th><a href="./setFillColor/README.md">setFillColor()</a></th>
        <td>Change the filling color (inner color).</td>
    </tr>
    <tr>
        <th>getFillColor()</th>
        <td>Return the current polygon filling color (inner color).</td>
    </tr>
    <tr>
        <th>setStrokeWidth()</th>
        <td>Changes the polygon stroke width.</td>
    </tr>
    <tr>
        <th>getStrokeWidth()</th>
        <td>Returns the current stroke width (unit: pixel).</td>
    </tr>
    <tr>
        <th><a href="./setStrokeColor/README.md">setStrokeColor()</a></th>
        <td>Change the stroke color (outter color).</td>
    </tr>
    <tr>
        <th>getStrokeColor()</th>
        <td>Return the current polygon stroke color (outer color).</td>
    </tr>
    <tr>
        <th><a href="./setClickable/README.md">setClickable()</a></th>
        <td>Change clickablity of the polygon.</td>
    </tr>
    <tr>
        <th>getClickable()</th>
        <td>Return true if the polygon is clickable.</td>
    </tr>
    <tr>
        <th><a href="./setVisible/README.md">setVisible()</a></th>
        <td>Change visibility of the polygon.</td>
    </tr>
    <tr>
        <th>getVisible()</th>
        <td>Return true if the polygon is visible.</td>
    </tr>
    <tr>
        <th>setGeodesic()</th>
        <td>When true, edges of the polygon are interpreted as geodesic and will follow the curvature of the Earth. </td>
    </tr>
    <tr>
        <th>getGeodesic()</th>
        <td>Returns true if the polygon is geodesic.</td>
    </tr>
    <tr>
        <th><a href="./setZIndex/README.md">setZIndex()</a></th>
        <td>Change the polygon zIndex order.</td>
    </tr>
    <tr>
        <th>getZIndex()</th>
        <td>Return the current polygon zIndex.</td>
    </tr>
    <tr>
        <th><a href="./remove/README.md">remove()</a></th>
        <td>Remove the polygon.</td>
    </tr>
    <tr>
        <th>getMap()</th>
        <td>Return the map reference.</td>
    </tr>
</table>

### Events
<table>
    <tr>
        <th><a href="./POLYGON_CLICK/README.md">POLYGON_CLICK</a></th>
        <td>Arguments:  <a href="../LatLng/README.md">LatLng</a><br>This event is fired when you click on a polygon.</td>
    </tr>
</table>
