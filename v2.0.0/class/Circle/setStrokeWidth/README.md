# circle.setStrokeWidth()

Change the stroke width of the circle.

```html
<div id="map_canvas"></div>
```

```js
var GOOGLE = {"lat" : 37.422858, "lng" : -122.085065};
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  showVirtualDialog(mapDiv, "Click on the circle!");

  // Add circle
  map.addCircle({
    'center': GOOGLE,
    'radius': 300,
    'strokeColor' : '#AA00FF',
    'strokeWidth': 5,
    'fillColor' : '#880000',
    'clickable' : true   // default = false
  }, function(circle) {

    map.moveCamera({
      target: circle.getBounds()
    });

    circle.on(plugin.google.maps.event.CIRCLE_CLICK, function(latLng) {

      // Change the stroke width
      circle.setStrokeWidth(20);

    });

  });

});
```

![](image.gif)
