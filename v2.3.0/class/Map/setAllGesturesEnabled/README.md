# map.setAllGesturesEnabled()

Sets the preference for whether all gestures should be enabled or disabled.

```html
<div class="map" id="map_canvas">
  <span class="smallPanel"><button>current: map.allGesturesEnabled = true</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  'gestures': {
    'scroll': true,
    'tilt': true,
    'rotate': true,
    'zoom': true
  }
});

var isEnabled = true;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  isEnabled = !isEnabled;
  map.setAllGesturesEnabled(isEnabled);
  button.innerHTML = "current: map.allGesturesEnabled = " + isEnabled;
});

```

![](image.gif)
