# map.addTileOverlay()

The map.addTileOverlay() method adds a tile layer on the map.

**Note**

The default tileSize is now 512px x 512px.
If you use different tile size images, the plugin resizes them automatically.


```html
<div id="map_canvas"></div>
```

```js
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  //'mapType' : plugin.google.maps.MapTypeId.NONE,
  'preferences': {
    'zoom': {
      'minZoom': 0,
      'maxZoom': 4
    }
  }
});

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  map.addTileOverlay({
    debug: true,  // draw the debug information on tiles

    opacity: 0.75,  // from 0.0 to 1.0

    // Load image files from the local file path
    getTile: function(x, y, zoom) {
      //return "http://tile.openstreetmap.org/" + zoom + "/" + x + "/" + y + ".png";
      return "../images/map-for-free/" + zoom + "_" + x + "-" + y + ".gif"
    }
  }, function(tileOverlay) {

  });

});
```

![](image.gif)
