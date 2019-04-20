:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# marker.setInfoWindowAnchor()

Change the info window anchor.

```
marker.setInfoWindowAnchor(x, y);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
x              | number   | x offset from left-top in pixel
y              | number   | y offset from left-top in pixel
------------------------------------------------------------------

## Demo code

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);{


// Add a marker
var marker = map.addMarker({
  'position': {
    lat: 0,
    lng: 0
  },
  'icon': {
    'url': './target_icon.png',
    'anchor': [24, 24]
  },
  'title': 'Click me!'
});

// Open the infoWindow
marker.showInfoWindow();

marker.on(plugin.google.maps.event.INFO_CLICK, function() {

  // Set the infoWindow anchor at 24x24px from the left-top of the icon.
  marker.setInfoWindowAnchor(24, 24);

});
```

![](image.gif)
