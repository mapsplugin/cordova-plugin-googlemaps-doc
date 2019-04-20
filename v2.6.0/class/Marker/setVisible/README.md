:green_heart: This is the latest document.

# marker.setVisible()

Change the marker visibility.

```
marker.setVisible(flag);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
flag           | boolean  | `false`: invisible, `true`: visible
------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <table class="smallPanel">
    <tr>
      <td><button>marker.setVisible(true)</button></td>
      <td><button>marker.setVisible(false)</button></td>
    </tr>
    </table>
</div>
```

```js

var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

// Add a marker
var marler = map.addMarker({
  'position': {
    lat: 0,
    lng: 0
  }
});

var button = div.getElementsByTagName('button')[0];
button.addEventListener("click", function() {
  if (marker.isVisible()) {
    marker.setVisible(false);
  } else{
    marker.setVisible(true);
  }
  button.innerHTML = "marker.isVisible() = " + marker.isVisible();
});


```

![](image.gif)
