# marker.getPosition()

Get the marker position.

-----------------------------------------------------------------------

## Demo code

```html
<div  id="map_canvas">
    <span class="smallPanel" id="label"></span>
</div>
```

```js
var labelDiv = document.getElementById("label");
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  gestures: {
    scroll: false  // Disable map dragging
  }
});


// Add a marker which is draggable.
var marker = map.addMarker({
  position: {
    lat: 0,
    lng: 0
  },
  draggable: true,
  title: "Drag me!"
});

// Open the info window.
marker.showInfoWindow();

// Display the current location
labelDiv.innerText = marker.getPosition().toUrlValue();

// Catch the drag events.
marker.on(plugin.google.maps.event.MARKER_DRAG_START, onMarkerDrag);
marker.on(plugin.google.maps.event.MARKER_DRAG, onMarkerDrag);
marker.on(plugin.google.maps.event.MARKER_DRAG_END, onMarkerDrag);


function onMarkerDrag() {
  var marker = this;

  // Display the current location
  labelDiv.innerText = marker.getPosition().toUrlValue();
}
```

![](image.gif)
