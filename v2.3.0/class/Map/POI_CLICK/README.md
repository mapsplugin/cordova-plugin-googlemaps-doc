# POI_CLICK event

This event is fired when you tap on POIs(such as building icon).

```html
<div id="map_canvas"></div>
```

```js

var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  camera: {
    target: {
      lat: 37.422000,
      lng: -122.084057
    },
    zoom: 15
  }
});

// Show a virtual dialog (loader.js)
showVirtualDialog(div, "Click on POI icon!");

map.on(plugin.google.maps.event.POI_CLICK, function(placeId, name, latLng) {
  var marker = map.addMarker({
    'position': latLng,
    'title': [
      "placeId = " + placeId,
      "name = " + name,
      "position = " + latLng.toUrlValue()
    ].join("\n")
  });
  marker.showInfoWindow();
});

```
