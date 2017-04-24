# map.getCameraTarget()

Get the current camera target(latitude/longitude) position.

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  var button = div.getElementsByTagName('button')[0];
  button.addEventListener('click', function() {

      // Show the current camera target position.
      var target = map.getCameraTarget();
      alert([
        "lat: " + target.lat,
        "lng: " + target.lng
      ]);
  });

});
```

![](image.gif)
