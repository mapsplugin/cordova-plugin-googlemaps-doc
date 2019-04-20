:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# marker.showInfoWindow()

Show the infoWindow of the marker.

```
marker.showInfoWindow();
```

## Demo code

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var marker = map.addMarker({
  'position': {
    lat: 0,
    lng: 0
  },
  'title': "Hello GoogleMap for Cordova!"
});

// Show the infoWindow
marker.showInfoWindow();
```

![](image.png)
