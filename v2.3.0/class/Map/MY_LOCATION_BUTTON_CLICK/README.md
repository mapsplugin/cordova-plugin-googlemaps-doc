# MY_LOCATION_BUTTON_CLICK event

This event is fired when you tap on the location button.

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
      'myLocation': true  // try `myLocation = false`
    }
  });
  map.on(plugin.google.maps.event.MY_LOCATION_BUTTON_CLICK, function() {
    alert("The my location button is clicked.");
  });
});
```

![](image.gif)
