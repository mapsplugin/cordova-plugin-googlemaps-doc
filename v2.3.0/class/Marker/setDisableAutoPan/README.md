:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# marker.setDisableAutoPan()

Set true if you **do not want** to move the map when you click on the marker.

```
marker.setDisableAutoPan(flag);
```

## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
flag           | boolean       | `true`: disable to autopan, `false`: enable to autopan
-----------------------------------------------------------------------

## Demo code

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

// Add a marker
var marker = map.addMarker({
  'position': {
    lat: 20,
    lng: 20
  },
  'animation': plugin.google.maps.Animation.BOUNCE,
  'title': 'The map does not move when you click on this marker.'
});

// Disable marker auto panning.
marker.setDisableAutoPan(true);

marker.on(plugin.google.maps.event.MARKER_CLICK, function() {
  marker.showInfoWindow();
});

```

![](image.gif)
