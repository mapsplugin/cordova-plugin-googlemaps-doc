# marker.showInfoWindow()

Show the infoWindow of the marker.

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  map.addMarker({
    'position': {
      lat: 0,
      lng: 0
    },
    'title': "Hello GoogleMap for Cordova!"
  }, function(marker) {

    // Show the infoWindow
    marker.showInfoWindow();
  });
});
```

![](image.png)
