### Check the availability
This plugin uses [Google Maps Android API v2](https://developers.google.com/maps/documentation/android/) and [Google Maps SDK for iOS](https://developers.google.com/maps/documentation/ios/). They are native libraries, not JavaScript.
Since Google Map Android API v2 uses some Google APIs, which does not include in the Android open source code, this plugin does not run on some Android which does not have Google Frameworks, such as Amazon Kindle Fire.
You can check the availability using `plugin.google.maps.Map.isAvailable()`.

Google Maps SDK for iOS includes all files to run the map in your app, you don't need to worry.
`plugin.google.maps.Map.isAvailable()` passes `true` always.

```js
document.addEventListener("deviceready", function() {
  // Check the availability of Google Maps Android API v2.
  // Return always true in iOS.
  plugin.google.maps.Map.isAvailable(function(isAvailable, message) {
    if (isAvailable) {
      var map = plugin.google.maps.Map.getMap();
      map.addEventListener(plugin.google.maps.event.MAP_READY, onMapInit);
    } else {
      alert(message);
    }
  });
});

function onMapInit(map) {
  alert("The google map is available on this device.");
}
```
