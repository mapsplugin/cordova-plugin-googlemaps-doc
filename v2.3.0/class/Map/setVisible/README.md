# map.setVisible()

If set false, the map is hidden.

```html
<div class="map" id="map_canvas">
  <span class="smallPanel"><button>current: map.visible = true</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var visible = true;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  visible = !visible;
  map.setVisible(visible);
  button.innerHTML = "current: map.visible = " + visible;
});

```

![](image.gif)
