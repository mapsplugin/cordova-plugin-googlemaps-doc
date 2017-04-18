cordova-plugin-googlemaps has some nice features. Let's introduce them briefly.

---
### Similar code style
cordova-plugin-googlemaps provides JavaScript API, which is kind of similar with Google Maps JavaScript API v3.
For instance, display a map with a location:

**Google Maps JavaScript API v3**
```js
var map = new google.maps.Map(mapDiv);
var GOOGLE = new google.maps.LatLng(37.422858, -122.085065);
map.setCenter(GOOGLE);
```

**cordova-plugin-googlemaps**
```js
var GOOGLE = new plugin.google.maps.LatLng(37.422858, -122.085065);
var map = plugin.google.maps.Map.getMap(mapDiv);
map.addEventListener(plugin.google.maps.event.MAP_READY, function() {
  map.setCenter(GOOGLE);
});
```

---
### Simple code
#### Basic usage

If you want to display a location with specified zoom level, you just need to pass these parameters to the `animateCamera()` method.
```js
map.animateCamera({
  target: new plugin.google.maps.LatLng(37.422858, -122.085065),
  zoom: 15
}, function() {
  console.log("The animation is done.");
});
```
![img](https://raw.github.com/wf9a5m75/phonegap-googlemaps-plugin/Images/screencapture/animateCamera.gif)

#### Fit bounds
If you want to display the map with fitting a bound, pass an Array of LatLng, or an instance of LatLngBounds.
```js
var GORYOKAKU_POINTS = [
  {"lat": 41.79883, "lng": 140.75675},
  {"lat": 41.799240000000005, "lng": 140.75875000000002},
  {"lat": 41.797650000000004, "lng": 140.75905},
  {"lat": 41.79637, "lng": 140.76018000000002},
  {"lat": 41.79567, "lng": 140.75845},
  {"lat": 41.794470000000004, "lng": 140.75714000000002},
  {"lat": 41.795010000000005, "lng": 140.75611},
  {"lat": 41.79477000000001, "lng": 140.75484},
  {"lat": 41.79576, "lng": 140.75475},
  {"lat": 41.796150000000004, "lng": 140.75364000000002},
  {"lat": 41.79744, "lng": 140.75454000000002},
  {"lat": 41.79909000000001, "lng": 140.75465},
  {"lat": 41.79883, "lng": 140.75673}
];
map.animateCamera({
  'target': GORYOKAKU_POINTS
});
```
![img](https://camo.githubusercontent.com/b4907eece38f3dc40ec921124f73aff8cd818ce1/68747470733a2f2f726177322e6769746875622e636f6d2f77663961356d37352f70686f6e656761702d676f6f676c656d6170732d706c7567696e2f496d616765732f73637265656e636170747572652f706f6c79676f6e2e706e67)

---

### Original features
cordova-plugin-googlemaps has some original features, that Google Maps Android API v2 and Google Maps SDK for iOS do not provide them.

[Display multiple lines in InfoWindow](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Marker#add-a-marker-with-multiple-line)<br>
![img](https://camo.githubusercontent.com/224b16562b52625f3d06e15cc4e7a28701f77b4e/68747470733a2f2f676f6f676c6564726976652e636f6d2f686f73742f304231454366715443634c45384c557855576d6873516d67785656552f6d61726b6572312e676966)

[Styled infoWindow](https://github.com/mapsplugin/cordova-plugin-googlemaps-ja-doc/wiki/Marker#text-styling)<br>
![img](https://googledrive.com/host/0B1ECfqTCcLE8MU1CbUtNVUs3TEE/styleInfoWindow.png)

[Base64 encoded and title for Marker](https://github.com/mapsplugin/cordova-plugin-googlemaps-ja-doc/wiki/Marker#base64-encoded-icon)<br>
![img](https://camo.githubusercontent.com/ee2658fe6364bd3d45642bfaab441124cf935d5e/68747470733a2f2f676f6f676c6564726976652e636f6d2f686f73742f304231454366715443634c45384c557855576d6873516d67785656552f6d61726b6572352e676966)

[Load a KML file](https://github.com/mapsplugin/cordova-plugin-googlemaps-ja-doc/wiki/KmlOverlay)<br>
![img](https://raw.githubusercontent.com/wf9a5m75/phonegap-googlemaps-plugin/Images/screencapture/kml-polygon.gif)

---

### Fuss-free
cordova-plugin-googlemaps takes care of all of things of Google Maps Mobile SDKs (as much as possible).
And the most features of JavaScript API behaves the same working on both Android and iOS.<br>
![img](https://camo.githubusercontent.com/f077472201d005567ce5e32162fb9afca6ee86cd/68747470733a2f2f676f6f676c6564726976652e636f6d2f686f73742f304231454366715443634c45385a565131646a6c574e5468495345452f70686f6e656761702d676f6f676c656d6170732d706c7567696e5f736d616c6c2e706e67)
