:green_heart: This is the latest document.

# marker.setRotation()

Set the marker rotation angle. Available value range is from 0 to 360.

```
marker.setRotation(angle);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
angle          | number   | new rotation angle
------------------------------------------------------------------

## Demo code

```html
<div id="map_canvas">
  <span class="smallPanel">
    Rotation: 0.0&nbsp;<input id="rotationRange" type="range" min="0" max="360" step="10" value="0">&nbsp;360
  </span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

// Add a marker
var marker = map.addMarker({
  'position': {
    lat: 0,
    lng: 0
  }
});

var range = document.getElementById("rotationRange");
range.addEventListener("change", function() {

  // Set the marker rotation angle.
  marker.setRotation(parseInt(this.value));
});

// Set the current value as rotation angle.
marker.setRotation(range.value);
```

![](image.gif)
