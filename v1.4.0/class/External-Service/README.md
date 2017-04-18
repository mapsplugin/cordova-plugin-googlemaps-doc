**Recommend: [Launch Navigator Cordova/Phonegap Plugin](https://github.com/dpa99c/phonegap-launch-navigator)**


### External Service
The plugin does not implement some features, such as navigation, but the external applications have one.
In this case, you can launch the external application.


## Navigation
The launchNavigation method launches the Google Maps app.
If Google Maps app is not available in iOS, Apple Maps app is launched.
You can just pass `from` and `to` parameters.

As of version 1.2.3, you can also specify the `travelMode` parameter.

**travelMode**
- `driving`
- `transit`
- `bicycling`
- `walking`

### Example1
```js
plugin.google.maps.external.launchNavigation({
  "from": "Tokyo, Japan",
  "to": "Kyoto, Japan"
});
```



### Example2
```js
var yourLocation = null;
map.getMyLocation(function(location) {
  yourLocation = location.latLng;

  map.addMarker({
    "position": yourLocation,
    "title": "I am around here!"
  }, function(marker) {
    marker.showInfoWindow();
  });

  map.moveCamera({
    "target": yourLocation,
    "zoom": 12
  });
});

map.on(plugin.google.maps.event.MAP_CLICK, function(latLng) {
  map.addMarker({
    "position": latLng,
    "title": "Destination"
  }, function(marker) {
    marker.showInfoWindow();

    setTimeout(function() {

      if (confirm("Do you want to go?")) {
        plugin.google.maps.external.launchNavigation({
          "from": yourLocation,
          "to": latLng
        });
      }
    }, 2000);
  });
});
```

***
# Class Reference
Method | Return value | Description
----|------|----
launchNavigation() | void  | Launch the external navigation app.
