# tileOverlay.setZIndex()

Change the tile overlay zIndex order.

```js
<div id="map_canvas">
  <span class="smallPanel"><button>Reverse the zIndex orders</button></span>
</div>
```

```js
var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv);
map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  var tileList = [

    "../images/map-for-free/{zoom}_{x}-{y}.gif",
    "http://tile.stamen.com/toner/{zoom}/{x}/{y}.png"
  ];
  var layers = [];
  tileList.forEach(function(layerUrl, idx) {

    // Create a layer
    map.addTileOverlay({
      getTile: function(x, y, zoom) {
        return layerUrl.replace("{zoom}", zoom)
                  .replace("{x}", x)
                  .replace("{y}", y);
      }
    }, function(layer) {

      layers.push(layer);

    });

  });

  // Change the layer zIndex orders.
  var button = document.getElementsByTagName("button")[0];
  button.addEventListener("click", function() {
    layers = layers.reverse();
    layers.forEach(function(layer, idx) {
        layer.setZIndex(idx);
    });

  });

});
```

![](image.gif)
