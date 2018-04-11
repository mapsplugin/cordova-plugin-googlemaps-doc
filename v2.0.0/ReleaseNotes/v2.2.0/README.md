# Release notes version 2.2.0

---
Featured points
------------------------------------------------------------------------

### Welcome back the `KmlOverlay`!

I'm really happy to introduce the new KmlOverlay!
It supports much more tags than the previous maps plugin v1.4.0.

Supported tags are:
<table>
<tr>
  <td>kml</td><td>folder</td><td>placemark</td><td>document</td><td>multigeometry</td>
</tr>
<tr>
  <td>photooverlay</td><td>point</td><td>polygon</td><td>linestring</td><td>groundoverlay</td>
</tr>
<tr>
  <td>networklink<br>(&lt;region&gt; is also supported)</td><td>lookat</td><td>extendeddata</td><td>schema</td><td>styles</td>
</tr>
<tr>
  <td>balloonstyle<br>(&lt;description&gt; only)</td><td>iconstyle</td><td>styleurl</td><td>stylemap<br>(normal mode only)</td><td>coordinates</td>
</tr>
</table>

Regarding of `<ExtendedData>` tag, if the kml file contains `<BaloonStyle>` tag as template,
the maps plugin v2.2.0 displays just like defined. Otherwise, draw a table like below.

![](kmlOverlay_demo.gif)

The usage is really easy.

```
map.addKmlOverlay({
  'url': (KML file path or URL),   // <-- .KMZ file is not supported yet!
  'clickable': true,
  'suppressInfoWindows': false
}, function(kmlOverlay) {

  // debug
  //console.log(kmlOverlay.getKmlData());

  // You can get additional information
  //kmlOverlay.on(plugin.google.maps.event.KML_CLICK, function(overlay, latLng) {
  //  console.log(overlay);
  //});

  // You need to change the camera by yourself.
  map.moveCamera(kmlOverlay.camera, function() {

    //close the dialog
    mapDiv.removeChild(dialogDiv);

  });

});
```

You still can get data from other tags that are not listed in the above table.
The new KML parser returns all tag elements.

---

### Just like a HTML element!

**You should no longer face the non-clickable Google Maps problem!**

The maps plugin v2.2.0 implements correct HTML hierarchy calculation algorithm.
It means if you open an HTML dialog over the map, you don't need to execute `map.setClickable(false)`.
The maps plugin detects it correctly.

This is of great benefit to users who use JS frameworks, such as `ionic` or` framework7`.
Because these frameworks support multipage mechanisms in varying ways.


Also the DOM inspection performance has been improved significantly.

### No longer support for Android 4.3 or lower versions

The maps plugin v2.2.0 implements a new way to detect the DOM hierarchy,
the plugin uses `MutableObserver`. Because of this, it no longer supports Android 4.3 or lower versions.

### Improve the maps positioning

The maps plugin v2.2.0 makes map positioning better than ever before.

![](scroll.gif)

### (iOS) Fix the problem that can not click on DatePicker(or other) plugins.

In the past, you can **not** click on other plugins such as DatePicker.
Because these plugins insert their own native views under the browser view.
But this problem was fixed at this version.

![](other_plugins.gif)

---

### LocationService.getMyLocation() without map!

You can get the location through `LocationService` static class.

```js
// Get the current device location "without map"
var option = {
  enableHighAccuracy: true // use GPS as much as possible
};
plugin.google.maps.LocationService.getMyLocation(option, function(location) {

  // Create a map with the device location
  var mapDiv = document.getElementById('map_canvas');
  var map = plugin.google.maps.Map.getMap(mapDiv, {
    'camera': {
      target: location.latLng,
      zoom: 16
    }
  });

  map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

    // Add a marker
    var text = ["Current your location:\n",
      "latitude:" + location.latLng.lat.toFixed(3),
      "longitude:" + location.latLng.lng.toFixed(3),
      "speed:" + location.speed,
      "time:" + location.time,
      "bearing:" + location.bearing].join("\n");

    map.addMarker({
      title: text,
      position: location.latLng
    }, function(marker) {
      marker.showInfoWindow();
    });

  });
});
```

![](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/raw/master/v2.0.0/class/locationservice/getMyLocation/image.gif?raw=true)

---

### The `myLocation` property has changed!

This is really important announce. You set `controls.myLocation = true` when you want to display the current location (aka, `blue dot`);

Until the maps plugin v2.1.1, the plugin displays/hides both the `blue dot` and the `myLocation button` together.
Because the Google Maps Android API v2 implements so like that.

![](mylocation_v2.1.1.png)

However, I figured out a way to control them separately.
From the maps plugin v2.2.0, you can hide the `myLocationButton` but display the `blue dot`.

![](mylocation_v2.2.0-a.png)

How about the opposite case? Yes, it's possible.

![](mylocation_v2.2.0-b.png)

In this case, if you tap on the myLocation button, the map does not do anything because `myLocation = false`. But you can get the event with `MY_LOCATION_BUTTON_CLICK` event.

```js
map.on(plugin.google.maps.event.MY_LOCATION_BUTTON_CLICK, function() {
  alert("The my location button is clicked.");
});
```

---

### The `POI_CLICK` event

When you tap on POIs, you can get the information.

```js
map.on(plugin.google.maps.event.POI_CLICK, function(placeId, name, latLng) {
  map.addMarker({
    'position': latLng,
    'title': [
      "placeId = " + placeId,
      "name = " + name,
      "position = " + latLng.toUrlValue()
    ].join("\n")
  }, function(marker) {
    marker.showInfoWindow();
  });
});
```
![](POI_CLICK.gif)

---

### The `MY_LOCATION_CLICK` event

You can listen the `MY_LOCATION_CLICK` event.
This event is fired when you tap on the `blue dot`.

```js
map.on(plugin.google.maps.event.MY_LOCATION_CLICK, function(location) {
  map.addMarker({
    'title': ["Current your location:\n",
        "latitude:" + location.latLng.lat.toFixed(3),
        "longitude:" + location.latLng.lng.toFixed(3),
        "speed:" + location.speed,
        "time:" + location.time,
        "bearing:" + location.bearing].join("\n"),
    'position': location.latLng,
    'animation': plugin.google.maps.Animation.DROP,
    'disableAutoPan': true
  }, function(marker) {
    marker.showInfoWindow();
  });
});
```
![](MY_LOCATION_CLICK.gif)


---

### BaseArrayClass

Useful methods are added to `BaseArrayClass`.

  - [mapAsync(value, fn)](../../class/BaseArrayClass/mapAsync/README.md)
  - [mapSeries(value, fn)](../../class/BaseArrayClass/mapSeries/README.md)
  - [filterAsync(value, fn)](../../class/BaseArrayClass/filterAsync/README.md)

---

### Specify the SDK version of Google Play Services.


You can specify the SDK version of Google Play Services.

**Note that the maps plugin v2.2.0 requires the Google Play Services v11.8.0 or newer.**

Example using the Cordova CLI

```bash
$> cordova plugin add cordova-plugin-googlemaps \
    --variable API_KEY_FOR_ANDROID="..." \
    --variable API_KEY_FOR_IOS="..." \
    --variable PLAY_SERVICES_VERSION="11.8.0"
```

Example using config.xml
```xml
<plugin name="cordova-plugin-googlemaps" spec="2.2.0">
    <variable name="API_KEY_FOR_ANDROID" value="YOUR_ANDROID_API_KEY_IS_HERE" />
    <variable name="API_KEY_FOR_IOS" value="YOUR_IOS_API_KEY_IS_HERE" />
    <variable name="PLAY_SERVICES_VERSION" value="11.8.0" />
</plugin>
```

---

### `CLUSTER_CLICK` event is removed

Even if you want to use this event, you can still listen like this:

```
markerCluster.on('cluster_click', function() {
  ...
});
```

---

### `MAP_LOADED` event is removed

This event is removed completely.

---

- **v2.2.0**
  - Android version 4.3 and lower are no longer supported. A minimum of Android 4.4 is now required
  - Implement the CSS/HTML element hierarchy correctly
  - Implement map.addKmlOverlay()
  - [other updates](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/ReleaseNotes/v2.2.0/README.md)

- **v2.2.1**
  - Bug fix: can not use Geocoder

- **v2.2.2**
  - Bug fix: the icon property of Marker class does not affect

- **v2.2.3**
  - Bug fix: the icon property of Marker class does not affect if the html is hosted on `file://android_assets/`
  - Update: `cordova-android@7` is now supported
  - Fix: can not build with PhoneGap Build (see the above settings)

- **v2.2.4**
  - Bug fix: can not click html elements when the device is rotated
  - Add: Use `android-support-library-v4`
  - Fix: `cordova-plugin-gooelmaps.CordovaGoogleMaps is already defined warning` message
  - Update: `com.googlemaps.ios@2.6.0` is required. Please reinstall the plugin
  - Add: The plugin messages are localized for English and Japanese

- **v2.2.5** (small update)
  - Bug fix: setMyLocationEnabed(true) hides the MyLocationButton
  - Fix: Conflict with `cordova-plugin-geolocation`

- **v2.2.6**
  - Add: support languages
    (`Russian`, `Ukrainian`, `Brazilian Portuguese`, `German`, `French`, and `Hindi`)
  - Fix: [OK]button of &lt;select&gt;tag is displayed as Japanese
  - Fix: Cannot build with Java 1.7
  - Fix: `INFO_CLOSE` event is triggered twice
  - Fix: `map.setOptions()` does not work when used right after the `MAP_READY` function call

- **v2.2.7**
  - Add: support languages (`Arabic` and `Dutch`)
  - Fix: Can not build on iOS

- **v2.2.8**
  - Add: support language (`Polish`)
  - Add: plugin remove helper script
  - Fix: can not build on iOS completely
  - Fix: localize function is incorrect
  - Fix: can not use backbutton event
  - Fix: marker cluster does not work correctly if position data contains an `id` field
  - Update: Do not fire MAP_READY event until map.getVisibleRegion() is useable

- **v2.2.9**
  - Add: support language (`Danish`)
  - Add: hook scripts to prevent the `unknown property GOOGLE_PLAY_SERVICES_VERSION` problem with older versions of Cordova
  - Refactoring of internal code
  - Fix: Cannot find module '../node_modules/xml2js' error
  - Fix: getMyLocation() does not work on Genymotion
  - Fix: map disappears sometimes when changing ionic tabs

Working logs
------------------------------------------------------------------------

https://github.com/mapsplugin/cordova-plugin-googlemaps/compare/2285dc4ea45cc31210e7997b7d4fd0083c9f08b4...621f5305847a8ec5757f8129c5f34b2fca81bfc2

![](working_logs.png)
