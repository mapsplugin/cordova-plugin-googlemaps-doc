# map.addCircle()

The map.addCircle() method adds a circle on the map.

```html
<div class="map" id="map_canvas"></div>
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
      target: circle.getBounds()
    });

  });

});
```

![](image.png)
