:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# marker.getPosition()

Get the marker position.

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
map.one(plugin.google.maps.event.MAP_READY, function() {


  // Add a marker which is draggable.
  map.addMarker({
    position: {
      lat: 0,
      lng: 0
    },
    draggable: true,
    title: "Drag me!"
  }, function(marker) {

    // Open the info window.
    marker.showInfoWindow();

    // Display the current location
    labelDiv.innerText = marker.getPosition().toUrlValue();

    // Catch the drag events.
    marker.on(plugin.google.maps.event.MARKER_DRAG_START, onMarkerDrag);
    marker.on(plugin.google.maps.event.MARKER_DRAG, onMarkerDrag);
    marker.on(plugin.google.maps.event.MARKER_DRAG_END, onMarkerDrag);
  });

});

function onMarkerDrag() {
  var marker = this;

  // Display the current location
  labelDiv.innerText = marker.getPosition().toUrlValue();
}
```

![](image.gif)
