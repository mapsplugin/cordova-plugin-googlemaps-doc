:green_heart: This is the latest document.

# marker.setPosition()

Set the marker position.

```
marker.setPosition(position);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
position       | ILatLng  | new position
------------------------------------------------------------------

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
    lat: 0,
    lng: 0
  },
  'title': 'Click me!'
});

// Show the infoWindow.
marker.showInfoWindow();

marker.on(plugin.google.maps.event.INFO_CLICK, function() {

  // Change the marker position.
  marker.setPosition({
    lat: 20,
    lng: 20
  });

});
```

![](image.gif)
