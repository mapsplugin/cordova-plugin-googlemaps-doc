# marker.setOpacity()

Change the marker opacity. Available value range is from 0.0 to 1.0.

```
marker.setOpacity(opacity);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
opacity        | number   | `0.0`: invisible, `1.0`: visible
------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
  <span  class="smallPanel">
    Opacity: 0.0&nbsp;<input id="opacityRange" type="range" min="0" max="1" step="0.1">&nbsp;1.0
  </span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

// All gestures (such as pinch-zooming) are disabled.
map.setAllGesturesEnabled(false);

// Add a marker
var marker = map.addMarker({
  'position': {
    lat: 0,
    lng: 0
  }
});

  var range = document.getElementById("opacityRange");
  range.addEventListener("change", function() {

    // Set the current value as opacity.
    marker.setOpacity(parseFloat(this.value));
  });

  // Set the current value as opacity.
  marker.setOpacity(range.value);

});
```

![](image.gif)
