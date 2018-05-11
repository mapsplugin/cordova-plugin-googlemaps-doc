# map.addKmlOverlay()

Adds a KML overlay on the map.

```
map.addKmlOverlay(options, callback);
```

## Options

params               | type          | description
---------------------|---------------|-----------------------------------------------------------------
url                  | string        | Url or file path to KML file. KMZ file is not supportted.
clickable?           | boolean       | (optional) set `true` to receive the `KML_CLICK` event
suppressInfoWindows? | boolean       | (optional) set `true` to prevent open the default InfoWindow.
-------------------------------------------------------------------------------------------------------

## Demo code

```html
<div  id="map_canvas"></div>
```

```js
var map = plugin.google.maps.Map.getMap(mapDiv, {
  'mapTypeId': plugin.google.maps.MapTypeId.SATELLITE
});

// Show a dialog
var dialogDiv = showVirtualDialog(mapDiv, "Just a moment, please ...");

map.addKmlOverlay({
  'url': "https://raw.githubusercontent.com/mapsplugin/v2.0-demo/master/www/KmlOverlay/shizuoka.kml",
  'clickable': true,
  'suppressInfoWindows': false
}, function(kmlOverlay) {

  // You need to change the camera by yourself.
  map.moveCamera(kmlOverlay.camera, function() {

    //close the dialog
    mapDiv.removeChild(dialogDiv);

  });

});
```
