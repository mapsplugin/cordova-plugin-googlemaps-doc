# polygon.getPoints()

The getPoints() method returns an instance of [BaseArrayClass](../../BaseArrayClass/README.md).
You can modify the array instance using `insertAt()`, `setAt()`, and `removeAt()` methods.
The polygon is updated automatically.

The below demo is an example how to update the polygon.

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
  {lat: 41.79909000000001, lng: 140.75465}//,
  //{lat: 41.79883, lng: 140.75673}
];

var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: GORYOKAKU_POINTS
  }
});
map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  addEditablePolygon(map, GORYOKAKU_POINTS, function(polygon) {

    // To do something...

  });

});

function addEditablePolygon(map, points, callback) {

  // Add a polygon
  map.addPolygon({
    'points': points,
    'strokeColor' : '#AA00FF',
    'fillColor' : '#00FFAA',
    'width': 10
  }, function(polygon) {

    // polygon.getPoints() returns an instance of the BaseArrayClass.
    var mvcArray = polygon.getPoints();

    // Add draggable markers
    var markers = [];
    function onMarkerAdded(marker, idx) {
      markers.push(marker);

      // If the position property of the marker is updated,
      // a position_changed event is fired.
      marker.on("position_changed", function(oldValue, newValue) {

        // If the mvcArray is updated, the polygon will also be updated.
        mvcArray.setAt(idx, newValue);

      });
      if (markers.length === points.length) {
        callback(polygon);
      }
    }

    points.forEach(function(latLng, idx) {
      map.addMarker({
        position: latLng,
        draggable: true
      }, function(marker) {
        onMarkerAdded(marker, idx);
      });
    });

  });

}
```

![](image.gif)
