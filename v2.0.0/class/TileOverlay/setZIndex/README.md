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

    "../images/map-for-free/&lt;zoom&gt;_&lt;x&gt;-&lt;y&gt;.gif",
    "http://tile.stamen.com/toner/&lt;zoom&gt;/&lt;x&gt;/&lt;y&gt;.png"
  ];
  var layers = [];
  tileList.forEach(function(layerUrl, idx) {

    // Create a layer
    map.addTileOverlay({
      tileUrlFormat: layerUrl
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
