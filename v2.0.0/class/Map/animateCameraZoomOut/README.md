# map.animateCameraZoomOut()

Zooming out the camera with animation.

```html
<div id="map_canvas">
    <button>Click here</button>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  var button = div.getElementsByTagName('button')[0];
  button.addEventListener('click', function() {
    map.animateCameraZoomOut();
  });

});
```

![](image.gif)
