# map.getCameraPosition()

Get the current [camera position](../../CameraPosition/README.md).

------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {

    // Get the current camera position.
    var cameraPosition = map.getCameraPosition();

    // Show the results
    var text = ["Current camera position:\n",
      "-------------------------------",
      "latitude:" + cameraPosition.target.lat,
      "longitude:" + cameraPosition.target.lng,
      "zoom:" + cameraPosition.zoom,
      "tilt:" + cameraPosition.tilt,
      "bearing:" + cameraPosition.bearing].join("\n");

    alert(text);
});

```

![](image.gif)
