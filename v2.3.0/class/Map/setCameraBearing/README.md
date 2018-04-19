# map.setCameraBearing()

Change the camera view bearing.

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
    },
    zoom: 15
  }
});

var bearing = 0;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  bearing += 15;
  map.setCameraBearing(bearing);
});

```

![](image.gif)
