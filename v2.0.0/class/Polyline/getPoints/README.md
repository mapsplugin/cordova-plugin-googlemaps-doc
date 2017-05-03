# polyline.getPoints()

The getPoints() method returns an instance of [BaseArrayClass](../../BaseArrayClass/README.md).
You can modify the array instance using `insertAt()`, `setAt()`, and `removeAt()` methods.
The polyline is updated automatically.

The below demo is an example how to update the polyline.

```html
<div  id="map_canvas"></div>
```

```js
var HND_AIR_PORT = {lat: 35.548852, lng: 139.784086};
var SFO_AIR_PORT = {lat: 37.615223, lng: -122.389979};
var HNL_AIR_PORT = {lat: 21.324513, lng: -157.925074};
var AIR_PORTS = [
  HND_AIR_PORT,
  HNL_AIR_PORT,
  SFO_AIR_PORT
];

var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: AIR_PORTS
  }
});

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  addEditablePolyline(map, AIR_PORTS, function(polyline) {

    // To do something...

  });

});

function addEditablePolyline(map, points, callback) {

  // Add a polyline
  map.addPolyline({
    'points': points,
    'color' : '#AA00FF',
    'width': 10,
    'geodesic': true
  }, function(polyline) {

    // polyline.getPoints() returns an instance of the BaseArrayClass.
    var mvcArray = polyline.getPoints();

    // Add draggable markers
    var markers = [];
    function onMarkerAdded(marker, idx) {
      markers.push(marker);

      // If the position property of the marker is updated,
      // a position_changed event is fired.
      marker.on("position_changed", function(oldValue, newValue) {

        // If the mvcArray is updated, the polyline will also be updated.
        mvcArray.setAt(idx, newValue);

      });
      if (markers.length === points.length) {
        callback(polyline);
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
