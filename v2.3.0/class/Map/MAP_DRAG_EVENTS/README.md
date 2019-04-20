:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# MAP_DRAG events

These events are fired when the camera moves.

- The `MAP_DRAG_START` event is fired when you drag the map with gesture.</li>
- The `MAP_DRAG` event is fired while you are dragging the map.</li>
- The `MAP_DRAG_END` event is fired when the dragging is stopped.</li>

-----------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel">map status : <span id="label"></span></span>
</div>
```

```js
var label = document.getElementById("label");
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

// Catch all camera events
map.on(plugin.google.maps.event.MAP_DRAG_START, onMapDragEvents);
map.on(plugin.google.maps.event.MAP_DRAG, onMapDragEvents);
map.on(plugin.google.maps.event.MAP_DRAG_END, onMapDragEvents);

function onMapDragEvents() {
  label.innerText = this.event.type;
}
```

![](image.gif)
