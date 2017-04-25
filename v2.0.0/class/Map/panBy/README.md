# map.panBy()

Changes the center of the map by the given distance in pixels.

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
    // Move to left by 100px
    // Move to top by 50px
    map.panBy(100, 50);
  });

});
```

![](image.gif)
