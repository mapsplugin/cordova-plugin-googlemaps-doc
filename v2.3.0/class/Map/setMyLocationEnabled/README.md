# map.setMyLocationEnabled()

Set true if you want to show the MyLocation control (blue dot).

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>current: map.myLocation = true</button></span>
</div>
```

```js
var map = plugin.google.maps.Map.getMap(div, {
  controls: {
    myLocationButton: true,
    myLocation: true
  }
});

var isEnabled = true;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  isEnabled = !isEnabled;
  map.setMyLocationEnabled(isEnabled);
  button.innerHTML = "current: map.myLocation = " + isEnabled;
});
```

![](image.gif)
