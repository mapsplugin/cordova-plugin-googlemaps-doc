# new BaseArrayClass()

Create an instance of BaseArrayClass.
You can initialize the BaseArrayClass with array values.

```html
<div  id="map_canvas"></div>
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
  {lat: 41.79909000000001, lng: 140.75465}
];
var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: GORYOKAKU_POINTS
  }
});

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  var positionList = new plugin.google.maps.BaseArrayClass(GORYOKAKU_POINTS);

  positionList.map(function(position, cb) {
    map.addMarker({
      "position": position
    }, cb);
  }, function(markers) {
    // markers[0] ... markers[n]
  });

});
```
