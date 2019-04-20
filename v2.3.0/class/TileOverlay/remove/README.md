:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# tileOverlay.remove()

Remove the tile overlay.

```
tileOverlay.remove()
```

------------------------------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
  <span class="smallPanel"><button>Remove the layer</button></span>
</div>
```

```js
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  'mapType': plugin.google.maps.MapTypeId.ROADMAP
});


// Add a tile overlay
var tileOverlay = map.addTileOverlay({
  // &lt;x&gt;,&lt;y&gt; and &lt;zoom&gt; are replaced with values
  // (i.e. http://tile.stamen.com/toner/2/1/2.png)
  getTile: function(x, y, zoom) {
    return "http://tile.stamen.com/toner/" + zoom + "/" + x + "/" + y + ".png";
  }
});

var button = document.getElementsByTagName("button")[0];
button.addEventListener("click", function() {
  // Remove the tile overlay
  tileOverlay.remove();

});

```

![](image.gif)
