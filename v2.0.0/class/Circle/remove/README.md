# circle.remove()

Remove the circle.

```html
<div id="map_canvas"></div>
```

```js
var GOOGLE = {"lat" : 37.422858, "lng" : -122.085065};
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  // Add a circle
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

    // Show a virtual dialog (loader.js)
    showVirtualDialog(mapDiv, "Click on the circle!");

    // Catch the circle_CLICK event
    circle.on(plugin.google.maps.event.CIRCLE_CLICK, function() {

      // Remove the circle
      circle.remove();

    });

  });

});
```

![](image.gif)
