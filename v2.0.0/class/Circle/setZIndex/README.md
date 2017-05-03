# circle.setZIndex()

Change the circle zIndex order.

```html
<div id="map_canvas">
  <span class="smallPanel"><button>Reverse the zIndex orders</button></span>
</div>
```

```js
var position1 = {"lat":14.766787, "lng":-8.437506};
var position2 = {"lat":-1.272216, "lng":-1.875007};
var position3 = {"lat":17.468444, "lng":12.857131};

var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv);
map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  var colors = ["green", "blue", "orange"];
  var positions = [position2, position3, position1];
  var circles = [];
  positions.forEach(function(position, idx) {

    // Create circles
    map.addCircle({
      center: position,
      fillColor: colors[idx],
      strokeWidth: 7,
      zIndex: idx,
      radius: 3000000
    }, function(circle) {
      circles.push(circle);
    });
  });

  // Change the circle zIndex orders.
  var button = document.getElementsByTagName("button")[0];
  button.addEventListener("click", function() {

    circles = circles.reverse();
    circles.forEach(function(circle, idx) {
        circle.setZIndex(idx);
    });

  });

});
```

![](image.gif)
