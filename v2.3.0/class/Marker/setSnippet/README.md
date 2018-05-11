# marker.setSnippet()

Change the marker snippet.

```
marker.setSnippet(snippet);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
snippet        | string   | new snippet
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
  'title': "Click me!",
  'snippet': 'This is the snippet string.'
});

// Show the infoWindow
marker.showInfoWindow();

// Catch the MARKER_CLICK event
marker.on(plugin.google.maps.event.INFO_CLICK, function() {

  // Change the marker snippet.
  marker.setSnippet("This plugin is awesome!");

  // Redraw (reopen) the infoWindow.
  marker.showInfoWindow();

});
```

![](image.gif)
