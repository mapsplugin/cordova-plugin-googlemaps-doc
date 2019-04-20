:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# circle.setStrokeColor()

Change the filling color of the circle.

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

    // Change the fill color.
    var idx = 0;
    circle.on(plugin.google.maps.event.CIRCLE_CLICK, function(latLng) {

      // Available HTML colors
      // https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Available-HTML-colors
      //
      circle.setStrokeColor(["skyblue", "lime", "tomato", "bisque"][idx++]);
      idx = idx > 3 ? 0 : idx;
    });

  });

});
```

![](image.gif)
