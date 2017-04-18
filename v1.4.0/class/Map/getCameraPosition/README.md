Return the current camera position.

### Description
The callback function will be involved with current camera position as CameraPosition data.

---
### Code
```js
map.getCameraPosition(function(camera) {
  var buff = ["Current camera position:\n",
      "latitude:" + camera.target.lat,
      "longitude:" + camera.target.lng,
      "zoom:" + camera.zoom,
      "tilt:" + camera.tilt,
      "bearing:" + camera.bearing].join("\n");
  alert(buff);
});
```
