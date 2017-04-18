This class represents device position.

### Example

The **getMyLocation()** method of [Map](../Map/README.md) class returns the Location data of your device.
```js
map.getMyLocation(function(location) {
  var msg = ["Current your location:\n",
    "latitude:" + location.latLng.lat,
    "longitude:" + location.latLng.lng,
    "speed:" + location.speed,
    "time:" + location.time,
    "bearing:" + location.bearing].join("\n");

  map.addMarker({
    'position': location.latLng,
    'title': msg
  }, function(marker) {
    marker.showInfoWindow();
  });
});
```

# Location Class Reference
Property | Return value | Description
----|------|----
latLng | [LatLng](../LatLng/README.md) | The device location.
time | Number | Return the UTC time of this fix, in milliseconds since January 1, 1970.
elapsedRealtimeNanos | Number | Return the time of this fix, in elapsed real-time since system boot.
accuracy | Number | The estimated accuracy of this location, in meters.
bearing | Number | Bearing, in degrees.
altitude | Number | The altitude if available, in meters above sea level.
speed | Number | The speed if it is available, in meters/second over ground.
provider | Number | The name of the provider that generated this fix.
