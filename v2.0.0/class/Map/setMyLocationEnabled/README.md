# map.setMyLocationEnabled()

Set true if you want to show the MyLocation button.

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>current: map.myLocationButton = true</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  controls: {
    myLocationButton: true
  }
});
map.one(plugin.google.maps.event.MAP_READY, function() {

  var isEnabled = true;
  var button = div.getElementsByTagName('button')[0];
  button.addEventListener('click', function() {
    isEnabled = !isEnabled;
    map.setMyLocationEnabled(isEnabled);
    button.innerHTML = "current: map.myLocationButton = " + isEnabled;
  });

});
```

![](image.gif)
