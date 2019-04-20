:green_heart: This is the latest document.

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
