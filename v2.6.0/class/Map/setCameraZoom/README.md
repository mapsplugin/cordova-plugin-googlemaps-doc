:green_heart: This is the latest document.

# map.setCameraZoom()

Change the camera zoom level.

```
marker.setCameraZoom(zoom);
```

## Parameters

name       | type     | description
-----------|----------|---------------------------------------
zoom       | number   | new camera zoom level
--------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  camera: {
    target: {
      lat: 37.422858,
      lng: -122.085065
    }
  }
});

var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  map.setCameraZoom(10);
});
```

![](image.gif)
