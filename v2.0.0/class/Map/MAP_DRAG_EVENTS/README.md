# MAP_DRAG events

These events are fired when the camera moves.

- The `MAP_DRAG_START` event is fired when you drag the map with gesture.</li>
- The `MAP_DRAG` event is fired while you are dragging the map.</li>
- The `MAP_DRAG_END` event is fired when the dragging is stopped.</li>

```html
<div class="map" id="map_canvas">
    <span class="smallPanel">map status : <span id="label"></span></span>
</div>
```

```js
var label = document.getElementById("label");
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

map.one(plugin.google.maps.event.MAP_READY, function() {

  // Catch all camera events
  map.on(plugin.google.maps.event.MAP_DRAG_START, onMapDragEvents);
  map.on(plugin.google.maps.event.MAP_DRAG, onMapDragEvents);
  map.on(plugin.google.maps.event.MAP_DRAG_END, onMapDragEvents);

});
function onMapDragEvents() {
  label.innerText = this.event.type;
}
```

![](image.gif)
