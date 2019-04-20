:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# CAMERA_MOVE events

These events are fired when the camera moves.

- The `CAMERA_MOVE_START` event is fired when the camera moving starts.</li>
- The `CAMERA_MOVE` event is fired while the camera is moving.</li>
- The `CAMERA_MOVE_END` event is fired when the camera is stopped.</li>

```html
<div class="map" id="map_canvas">
  <table  class="smallPanel">
      <tr>
          <th rowspan="2">target</th>
          <td id="lat"></td>
      </tr>
      <tr>
          <td id="lng"></td>
      </tr>
      <tr>
          <th>zoom</th>
          <td id="zoom"></td>
      </tr>
      <tr>
          <th>tilt</th>
          <td id="tilt"></td>
      </tr>
      <tr>
          <th>bearing</th>
          <td id="bearing"></td>
      </tr>
  </table>
</div>
```

```js
var fields = {
  "lat": document.getElementById("lat"),
  "lng": document.getElementById("lng"),
  "zoom": document.getElementById("zoom"),
  "tilt": document.getElementById("tilt"),
  "bearing": document.getElementById("bearing")
};

var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

map.one(plugin.google.maps.event.MAP_READY, function() {

  // Catch all camera events
  map.on(plugin.google.maps.event.CAMERA_MOVE_START, onCameraEvents);
  map.on(plugin.google.maps.event.CAMERA_MOVE, onCameraEvents);
  map.on(plugin.google.maps.event.CAMERA_MOVE_END, onCameraEvents);

});
function onCameraEvents(cameraPosition) {
  // Display the current camera position

  fields.lat.innerText = cameraPosition.target.lat;
  fields.lng.innerText = cameraPosition.target.lng;
  fields.zoom.innerText = cameraPosition.zoom;
  fields.tilt.innerText = cameraPosition.tilt;
  fields.bearing.innerText = cameraPosition.bearing;
}
```

![](image.gif)
