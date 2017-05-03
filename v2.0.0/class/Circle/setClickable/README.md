# circle.setClickable()

Change clickability of the circle.

```html
<div class="map" id="map_canvas">
  <span class="smallPanel"><input type="checkbox" id="toggleCheckbox" checked="checked">circle.setClickable(true)</span>
</div>
```

```js
var GOOGLE = {"lat" : 37.422858, "lng" : -122.085065};
var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv);
map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

    // Add a circle
    map.addCircle({
        'center': GOOGLE,
        'radius': 300,
        'strokeColor' : '#AA00FF',
        'strokeWidth': 5,
        'fillColor' : '#880000',
        'clickable' : true   // default = false
    }, function(circle) {

        map.moveCamera({
          target: circle.getBounds()
        });

        var checkbox = document.getElementById("toggleCheckbox");
        checkbox.addEventListener("change", function() {

            // Change the clickable property
            circle.setClickable(checkbox.checked);
        });

        // Catch the CIRCLE_CLICK event
        circle.on(plugin.google.maps.event.CIRCLE_CLICK, function(latLng) {
            alert("The circle is clicked!");
        });
    });

});
```

![](image.gif)
