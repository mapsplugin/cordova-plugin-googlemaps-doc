# map.setCameraZoom()

Change the camera zoom level.

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
