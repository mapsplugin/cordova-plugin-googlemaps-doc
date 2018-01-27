# Release notes version 2.2.0

Featured points
------------------------------------------------------------------------

### Welcome back the `KmlOverlay`!

I'm really happy to introduce new KmlOverlay!
The new KmlOverlay supports many tags than the maps plugin v1.4.0.

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
  //console.log(kmlOverlay);

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

Other tags that are not listed the above table, you can still get the data.
New KML parser returns all tag elements.



### Just like a HTML element!

**You should not face the Maps not clickable problem anymore!**

The maps plugin v2.2.0 implements correct HTML hierarchy calculation algorithm.
It means if you open an HTML dialog over the map, you don't need to execute `map.setClickable(false)`.
The maps plugin detects it correctly.

This is big benefits for the users that use JS frameworks, such as `ionic` or `framework7`.
Because these frameworks support multiple page mechanism in variable ways.

Also the DOM inspection performance has been improved significantly.

### No longer support for Android 4.3 or lower versions

The maps plugin v2.2.0 implements a new way to detect the DOM hierarchy,
the plugin uses `MutableObserver`. Because of this, no longer support for Android 4.3 or lower versions.

### Improve the maps positioning

The maps plugin v2.2.0 becomes better the maps positioning than ever.

![](scroll.gif)

### LocationService.getMyLocation() without map!

Some people use [cordova-plugin-geolocation](https://github.com/apache/cordova-plugin-geolocation), because they want to know the device location **before creating a map**.

From the maps plugin v2.2.0, you can get the location throw `LocationService` static class.

```js
// Get the device location without map first.
plugin.google.maps.LocationService.getMyLocation(function(result) {

  // Then create a map with the location.
  var map = plugin.google.maps.Map.getMap(mapDiv, {
    'mapType': plugin.google.maps.MapTypeId.HYBRID,
    'camera': {
      target: result.latLng,
      zoom: 16
    }
  });

  map.addEventListener(plugin.google.maps.event.MAP_READY, function() {
     ...
  });
});
```

![](location_service_demo.gif)

### The `myLocation` property is changed!

This is really important announce. You set `controls.myLocation = true` when you want to display the current location (aka, `blue dot`);

Until the maps plugin v2.1.1, the plugin displays/hides both the `blue dot` and the `myLocation button` together.
Because the Google Maps Android API v2 implements so like that.

![](mylocation_v2.1.1.png)

However I figured out the way to control them separately.
From the maps plugin v2.2.0, you can hide the `myLocationButton` but display the `blue dot`.

![](mylocation_v2.2.0-a.png)

How about the opposite case? Yes, possible.

![](mylocation_v2.2.0-b.png)




### HtmlInfoWindow moves smoothly than ever.
