# marker.setIconAnchor()

Change the position at which to anchor an image in correspondence to the location of the marker on the map.
By default, the anchor is located along the center point of the bottom of the image.

```
marker.setIconAnchor(x, y);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
x              | number   | x offset from left-top in pixel
y              | number   | y offset from left-top in pixel
------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

// Add a marker (correct position)
map.addMarker({
  'position': {
    lat: 0,
    lng: 0
  },
  'zIndex' : 2
});

// Add a marker
var marker = map.addMarker({
  'position': {
    lat: 0,
    lng: 0
  },
  'icon': "./target_icon.png",
  'title': 'Click here to fix the icon anchor.',
  'zIndex': 1
});

// Open the infoWindow
marker.showInfoWindow();

// Catch the MARKER_CLICK evnet
marker.on(plugin.google.maps.event.INFO_CLICK, function() {

  // Change the icon anchor.
  // Set icon anchor point as 24x24 px from the left-top.
  marker.setIconAnchor(24, 24);

  // Change the marker title.
  marker.setTitle("Ta-da!");
  marker.setSnippet("The marker should be the correct position.");

  // Redraw (reopen) the infoWindow.
  marker.showInfoWindow();

});
```

![](image.gif)
