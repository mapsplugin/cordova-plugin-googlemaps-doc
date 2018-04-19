# MY_LOCATION_BUTTON_CLICK event

This event is fired when you tap on the location control (blue dot).

```html
<div id="map_canvas"></div>
```

```js

plugin.google.maps.LocationService.getMyLocation(function(result) {

  // Display the current location map
  var mapDiv = document.getElementById('map_canvas');
  var map = plugin.google.maps.Map.getMap(mapDiv, {
    'camera': {
      'target': result.latLng,
      'zoom': 16
    },
    'controls': {
      'myLocationButton': true,
      'myLocation': true
    }
  });

  map.on(plugin.google.maps.event.MY_LOCATION_CLICK, function(location) {
    var marker = map.addMarker({
      'title': ["Current your location:\n",
          "latitude:" + location.latLng.lat.toFixed(3),
          "longitude:" + location.latLng.lng.toFixed(3),
          "speed:" + location.speed,
          "time:" + location.time,
          "bearing:" + location.bearing].join("\n"),
      'position': location.latLng,
      'animation': plugin.google.maps.Animation.DROP,
      'disableAutoPan': true
    });
    marker.showInfoWindow();
  });

});
```
