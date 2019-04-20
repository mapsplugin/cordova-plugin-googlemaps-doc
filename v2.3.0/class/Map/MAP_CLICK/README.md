:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# MAP_CLICK event

This event is fired when you click on the map.

## Parameters

name       | type                              | description
-----------|-----------------------------------|-----------------
latLng     | [LatLng](../../LatLng/README.md)  | clicked position
-----------------------------------------------------------------

## Demo code

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

map.on(plugin.google.maps.event.MAP_CLICK, function(latLng) {

  map.addMarker({
    position: latLng,
    title: latLng,
    animation: plugin.google.maps.Animation.DROP
  });
});
```

![](image.gif)
