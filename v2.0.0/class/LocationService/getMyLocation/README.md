# LocationService.getMyLocation()

Get the current device location. You can get the location **without creating a map**.

```html
<div class="map" id="map_canvas"></div>
```

```js
plugin.google.maps.LocationService.getMyLocation(function(result) {

  var mapDiv = document.getElementById('map_canvas');

  var map = plugin.google.maps.Map.getMap(mapDiv, {
    'mapType': plugin.google.maps.MapTypeId.HYBRID,
    'camera': {
      target: result.latLng,
      zoom: 16
    }
  });

  map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

    var htmlInfoWindow = new plugin.google.maps.HtmlInfoWindow();
    htmlInfoWindow.setContent([
      "Current your location:",
      "",
      JSON.stringify(result, null, 2)
    ].join("\n") , {
      "max-width": "90%"
    });

    map.addMarker({
      position: result.latLng
    }, function(marker) {
      marker.on(plugin.google.maps.event.MARKER_CLICK, function() {
        htmlInfoWindow.open(marker);
      });
    });

  });
});
```

![](image.gif)
