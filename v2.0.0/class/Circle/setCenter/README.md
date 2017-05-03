# circle.setCenter()

Change the center position of the Circle.

```html
<div id="map_canvas"></div>
```

```js
var GOOGLE = {"lat" : 37.422858, "lng" : -122.085065};
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  // Add circle
  map.addCircle({
    'center': GOOGLE,
    'radius': 300,
    'strokeColor' : '#AA00FF',
    'strokeWidth': 5,
    'fillColor' : '#880000'
  }, function(circle) {

    map.moveCamera({
      target: circle.getBounds(),
      padding: 50
    });

    map.addMarker({
      position: circle.getCenter(),
      draggable: true,
      title: "Drag me!"
    }, function(marker) {

      marker.showInfoWindow();

      // If the marker moves, the center property is also changed.
      marker.bindTo("position", circle, "center");

    });

  });

});
```

![](image.gif)
