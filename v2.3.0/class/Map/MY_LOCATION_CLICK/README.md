# MY_LOCATION_CLICK event

This event is fired when you tap on the location control (blue dot).

* Please read here: _[The myLocation property has changed!](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/ReleaseNotes/v2.2.0/README.md#the-mylocation-property-has-changed) since v2.2.0_

## Parameters

name       | type                                      | description
-----------|-------------------------------------------|------------------------
location   | [MyLocation](../../MyLocation/README.md)  | current device location
--------------------------------------------------------------------------------

## Demo code

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

![](../../../../v2.0.0/ReleaseNotes/v2.2.0/MY_LOCATION_CLICK.gif)
