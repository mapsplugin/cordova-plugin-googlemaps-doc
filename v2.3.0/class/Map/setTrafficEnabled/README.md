# map.setTrafficEnabled()

Set true if you want to show the traffic layer.

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>current: map.trafficLayer = false</button></span>
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
    zoom: 10
  }
});

var isEnabled = false;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  isEnabled = !isEnabled;
  map.setTrafficEnabled(isEnabled);
  button.innerHTML = "current: map.trafficLayer = " + isEnabled;
});

```

![](image.gif)
