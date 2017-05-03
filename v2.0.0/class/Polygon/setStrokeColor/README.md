# polygon.setStrokeColor()

Change the filling color of the polygon.

```html
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
    'fillColor' : '#880000',
    'clickable' : true   // default = false
  }, function(polygon) {


    // Change the fill color.
    var idx = 0;
    polygon.on(plugin.google.maps.event.POLYGON_CLICK, function(latLng) {

      // Available HTML colors
      // https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Available-HTML-colors
      //
      polygon.setStrokeColor(["skyblue", "lime", "tomato", "bisque"][idx++]);
      idx = idx > 3 ? 0 : idx;
    });

  });

});
```

![](image.gif)
