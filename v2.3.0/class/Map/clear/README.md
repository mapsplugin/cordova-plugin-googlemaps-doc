:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.clear()

Removes all markers, polylines, polygons, overlays, etc from the map.

-----------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  // Removes the markers completely.
  map.clear(function() {
    alert("completed");
  });
});

// In order to get the visible region safely, you need to wait the MAP_READY event.
map.one(plugin.google.maps.event.MAP_READY, createMarkers);

function createMarkers() {
  var latLngBounds = map.getVisibleRegion();
  var sw = latLngBounds.southwest;
  var ne = latLngBounds.northeast;
  var diffY = (ne.lat - sw.lat);
  var diffX = (ne.lng - sw.lng);
  for (var i = 0; i < 100; i++) {
    map.addMarker({
      'position': {
        'lat': sw.lat + diffY * Math.random(),
        'lng': sw.lng  + diffX * Math.random()
      }
    });
  }
}
```

![](image.gif)
