# MAP_CLICK event

This event is fired when you click on the map.

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  map.on(plugin.google.maps.event.MAP_CLICK, function(latLng) {

    map.addMarker({
      position: latLng,
      title: latLng,
      animation: plugin.google.maps.Animation.DROP
    });
  });
});
```

![](image.gif)
